#!/usr/bin/python
import sys
import Image
import struct

out = open(sys.argv[1], "wb")

image = Image.open(sys.argv[2])
print list(image.getdata())
pixels = [1 if pix else 0 for pix in list(image.getdata())]
print pixels
s = struct.pack('B'*len(pixels), *pixels)
out.write(s)
print "Finished."
