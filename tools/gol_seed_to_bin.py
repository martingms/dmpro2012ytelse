#!/usr/bin/python
import sys
import Image
import struct

out = open(sys.argv[1], "wb")

image = Image.open(sys.argv[2])
pixels = [0 if pix else 1 for pix in list(image.getdata())]
s = struct.pack('B'*len(pixels), *pixels)
out.write(s)
print "Finished."
