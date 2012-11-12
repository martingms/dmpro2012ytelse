#!/usr/bin/env python

import sys
import Image
import struct

if len(sys.argv) < 3:
    sys.stderr.write("Usage: " + sys.argv[0] + " outfile images...\n")
    sys.exit(1)

file = open(sys.argv[1], "wb")

images = sys.argv[2:]
print "Processing " + str(len(images)) + " frames..."

for i, arg in enumerate(images):
    im = Image.open(arg)
    pix = list(im.getdata())
    s = struct.pack('B'*len(pix), *pix)
    file.write(s)

    if i % 25 == 0:
        print "Frame " + str(i) + " done"

print "Finished"

file.close()
