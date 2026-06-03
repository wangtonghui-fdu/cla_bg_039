import os
import subprocess
import argparse
import shutil
import re

def create_folders(n):
    for i in range(1, n+1):
        folder_name = f"yarpgen{i}"
        os.makedirs(folder_name, exist_ok=True)
        yarpgen_command = f"./yarpgen --std=c -o {folder_name}"
        subprocess.run(yarpgen_command, shell=True)

def clang_gen(n):
    for i in range(1, n+1):
        folder_name = f"yarpgen{i}"
        os.makedirs(folder_name, exist_ok=True)
        clang_command = f"gcc -DNOTDSP {folder_name}/func.c {folder_name}/driver.c -o {folder_name}/a.out"
        subprocess.run(clang_command, shell=True)

        output_file = f"{folder_name}/{folder_name}.txt"
        executable_command = f"./{folder_name}/a.out > {output_file}"
        subprocess.run(executable_command, shell=True)

def merge_and_move_yarpgen_folders(n, base_dir):
    """
    迁移并合并 Yarpgen 测试用例到目标目录
    
    参数:
        n: 需要迁移的文件夹数量
        base_dir: 目标基目录路径
    """
    
    # 确保目标目录存在
    os.makedirs(base_dir, exist_ok=True)
    
    testcases = []
    
    for i in range(1, n+1):
        folder_name = f"yarpgen{i}"
        if not os.path.exists(folder_name) or not os.path.isdir(folder_name):
            continue

        # 创建目标子目录
        destination = os.path.join(base_dir, folder_name)  
        os.makedirs(destination, exist_ok=True)
        
        # 必需文件路径
        driver_file = os.path.join(folder_name, "driver.c")
        func_file = os.path.join(folder_name, "func.c")
        header_file = os.path.join(folder_name, "init.h")
        
        # 验证必需文件是否存在
        if not os.path.exists(driver_file):
            raise FileNotFoundError(f"Missing driver.c in {folder_name}")
        if not os.path.exists(func_file):
            raise FileNotFoundError(f"Missing func.c in {folder_name}")
        if not os.path.exists(header_file):
            raise FileNotFoundError(f"Missing init.h in {folder_name}")
        
        # 读取文件内容
        with open(header_file, "r", encoding='utf-8') as f:
            header_content = f.read()
        
        with open(func_file, "r", encoding='utf-8') as f:
            func_content = f.read()
        
        with open(driver_file, "r", encoding='utf-8') as f:
            driver_content = f.read()
        
        # 移除func.c中对init.h的引用
        pattern = r'^\s*#\s*include\s*["<]init\.h[">]\s*$'
        func_content = re.sub(pattern, '', func_content, flags=re.MULTILINE)
        
        # 合并内容
        merged_content = [
            f"/* Merged from {folder_name} */",
            "",
            "/* Header content */",
            header_content,
            "",
            "/* Function implementations */",
            func_content,
            "",
            "/* Main function */",
            driver_content
        ]
        merged_content = "\n".join(merged_content)
        
        # 创建合并后的C文件到目标目录
        merged_c_file = os.path.join(destination, f"{folder_name}.c")
        with open(merged_c_file, "w", encoding='utf-8') as f:
            f.write(merged_content)
        
        # 移动其他文件到目标目录
        for item in os.listdir(folder_name):
            source = os.path.join(folder_name, item)
            dest = os.path.join(destination, item)
            
            # 跳过已处理的文件
            if item in ["driver.c", "func.c", "init.h"]:
                continue
                
            if os.path.isdir(source):
                shutil.move(source, dest)  
            else:
                shutil.move(source, dest) 
        
        # 删除 driver.c、func.c、init.h
        for fname in ["driver.c", "func.c", "init.h"]:
            fpath = os.path.join(folder_name, fname)
            if os.path.exists(fpath):
                os.remove(fpath)
        # 删除原始文件夹（已为空）        
        if not os.listdir(folder_name):
            os.rmdir(folder_name)

    #return testcases

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generate folders and compile using clang.")
    parser.add_argument("--n", type=int, required=True, help="Number of samples to generate")
    parser.add_argument("--dir", type=str, default=".", help="Base directory to store generated folders")

    args = parser.parse_args()
    
    n = args.n
    base_dir = args.dir
    
    print("---------------------yarpgen---------------------")
    create_folders(n)
    print("-----------------clang > output--------------------")
    clang_gen(n)
    
    print("------------------move folders--------------------")
    merge_and_move_yarpgen_folders(n, base_dir)
