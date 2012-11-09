#!/usr/bin/env python

import sys
import Image

if len(sys.argv) < 3:
    sys.stderr.write("Usage: " + sys.argv[0] + " outfile images...\n")
    sys.exit(1)

file = open(sys.argv[1], "wb")

images = sys.argv[2:]
print "Processing " + str(len(images)) + " frames..."

for i, arg in enumerate(images):
    im = Image.open(arg)
    pix = im.load()

    w = im.size[0]
    h = im.size[1]

    for y in range(0, h):
        for x in range(0, w):
            file.write(chr(pix[x, y]))
    print "Frame " + str(i) + " done"

print "Finished"

file.close()
