import binascii
import sys
import os

def replace(filePath, w2u):
  try:
    oldfile = open(filePath, "rb+")     
    path, name = os.path.split(filePath)
    newfile = open(path + '$' + name, "ab+")
     
    old = b''
    new = b''
    if w2u == True:
      old = b'\r'
      new = b''
    else:
      old = b'\n'
      new = b'\r\n'
 
    data = b''
    while (True):
      data = oldfile.read(200)
      newData = data.replace(old, new)
      newfile.write(newData)
      if len(data) < 200:
        break
    newfile.close()
    oldfile.close()
     
    os.remove(filePath)
    os.rename(path + '$' + name, filePath)
  except IOError as e:
    print(e)

if __name__ == "__main__":
  sourceFile = sys.argv[1]#raw_input("Input assembly source file name: ")
  #sourceFile = raw_input("Input assembly source file name: ")
  if os.path.isfile(sourceFile) == False:
      print(sourceFile + " doesn't exist!")
      os._exit(0)

  if os.path.isfile(".\\assember\\as.exe") == False:
      print("as.exe doesn't exist!")
      os._exit(0)

  if os.path.isfile(".\\assember\\ld.exe") == False:
      print("ld.exe doesn't exist!")
      os._exit(0)

  if os.path.isfile(".\\assember\\objcopy.exe") == False:
      print("objcopy.exe doesn't exist!")
      os._exit(0)

  replace(sourceFile, True)


  objectFile = sourceFile[:-2] + ".o"
  outFile = sourceFile[:-2] + ".out"
  datFileSim = sourceFile[:-2]
  datFileRtl = sourceFile[:-2] + ".dat"
  datFileCoe = sourceFile[:-2] + ".coe"
  datFileRtlSim = "outer_insn_mem.dat"
  os.system(".\\assember\\as.exe " + sourceFile + " -g --gdwarf-2 -o " + objectFile)
  os.system(".\\assember\\ld.exe " + objectFile + " -T link_8slots.x -o " + outFile)
  os.system(".\\assember\\objcopy.exe -O binary "+ outFile + " " + datFileSim)
  if os.path.isfile(datFileSim) == False:
      print("Doesn't create "+datFileSim)
      os._exit(0)
  fb_s = open(datFileSim,'rb')
  fb_d = open(datFileRtl,'w')


  for i in range(0,65535):
    insnPack = fb_s.read(32)
    if(len(insnPack) != 32):
        break
    insnPack = binascii.b2a_hex(insnPack)
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn2 = insnPack[16:24]
    insn3 = insnPack[24:32]
    insn4 = insnPack[32:40]
    insn5 = insnPack[40:48]
    insn6 = insnPack[48:56]
    insn7 = insnPack[56:64]
    insn0 = insn0[6:8].decode()+insn0[4:6].decode()+insn0[2:4].decode()+insn0[0:2].decode()#+ '_'
    insn1 = insn1[6:8].decode()+insn1[4:6].decode()+insn1[2:4].decode()+insn1[0:2].decode()#+ '_'
    insn2 = insn2[6:8].decode()+insn2[4:6].decode()+insn2[2:4].decode()+insn2[0:2].decode()#+ '_'
    insn3 = insn3[6:8].decode()+insn3[4:6].decode()+insn3[2:4].decode()+insn3[0:2].decode()#+ '_'
    insn4 = insn4[6:8].decode()+insn4[4:6].decode()+insn4[2:4].decode()+insn4[0:2].decode()#+ '_'
    insn5 = insn5[6:8].decode()+insn5[4:6].decode()+insn5[2:4].decode()+insn5[0:2].decode()#+ '_'
    insn6 = insn6[6:8].decode()+insn6[4:6].decode()+insn6[2:4].decode()+insn6[0:2].decode()#+ '_'
    insn7 = insn7[6:8].decode()+insn7[4:6].decode()+insn7[2:4].decode()+insn7[0:2].decode()+ '\n'
    addr =  '{0:0>8}'.format(hex(i*2+0x00200000).replace("0x",''))
    #i#fb_d.write(addr + '\n')
    #fb_d.write("32'h" + addr + '0,\t' + "256'h" + insn0 + insn1 + insn2 + insn3 + insn4 + insn5 + insn6 + insn7)
   


  fb_s.close()
  #fb_d.close()

  fb_cs = open(datFileSim,'rb')
  fb_cs_out = open(datFileCoe,'w')
  fb_cs_out1 = open(datFileRtlSim,'w')

  fb_cs_out.write("MEMORY_INITIALIZATION_RADIX=16;\n")
  fb_cs_out.write("MEMORY_INITIALIZATION_VECTOR=\n")

  for i in range(0,65535):
    insnPack = fb_cs.read(32)
    if(len(insnPack) != 32):
        break
    insnPack = binascii.b2a_hex(insnPack)
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn2 = insnPack[16:24]
    insn3 = insnPack[24:32]
    insn4 = insnPack[32:40]
    insn5 = insnPack[40:48]
    insn6 = insnPack[48:56]
    insn7 = insnPack[56:64]
    insn0 = insn0[6:8] + insn0[4:6] + insn0[2:4] + insn0[0:2]
    insn1 = insn1[6:8] + insn1[4:6] + insn1[2:4] + insn1[0:2]
    insn2 = insn2[6:8] + insn2[4:6] + insn2[2:4] + insn2[0:2]
    insn3 = insn3[6:8] + insn3[4:6] + insn3[2:4] + insn3[0:2]
    insn4 = insn4[6:8] + insn4[4:6] + insn4[2:4] + insn4[0:2]
    insn5 = insn5[6:8] + insn5[4:6] + insn5[2:4] + insn5[0:2]
    insn6 = insn6[6:8] + insn6[4:6] + insn6[2:4] + insn6[0:2]
    insn7 = insn7[6:8] + insn7[4:6] + insn7[2:4] + insn7[0:2]
    #addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    #i#fb_d.write(addr + '\n')
    #fb_cs_out.write(insn0 + insn1 + insn2 + insn3 + insn4 + insn5 + insn6 + insn7 + "\n")
    fb_cs_out.write(insn6.decode()+ insn7.decode()+ "\n")
    fb_cs_out.write(insn4.decode()+ insn5.decode()+ "\n")
    fb_cs_out.write(insn2.decode()+ insn3.decode()+ "\n")
    fb_cs_out.write(insn0.decode()+ insn1.decode()+ "\n")
    fb_cs_out1.write(insn6.decode()+ insn7.decode()+ "\n")
    fb_cs_out1.write(insn4.decode()+ insn5.decode()+ "\n")
    fb_cs_out1.write(insn2.decode()+ insn3.decode()+ "\n")
    fb_cs_out1.write(insn0.decode()+ insn1.decode()+ "\n")
    fb_d.write(insn6.decode() + insn7.decode() + "\n")
    fb_d.write(insn4.decode() + insn5.decode() + "\n")
    fb_d.write(insn2.decode() + insn3.decode() + "\n")
    fb_d.write(insn0.decode() + insn1.decode() + "\n")

  fb_cs.close();
  fb_cs_out.close();
  fb_cs_out1.close();
  fb_d.close();
