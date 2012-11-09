#!/usr/bin/env python

import sys
import Image

if len(sys.argv) < 3:
    sys.stderr.write("Usage: " + sys.argv[0] + " outfile images...\n")
    sys.exit(1)

file = open(sys.argv[1], "wb")

for arg in sys.argv[2:]:
    im = Image.open(arg)
    pix = im.load()

    w = im.size[0]
    h = im.size[1]

    for x in range(0, w):
        for y in range(0, h):
            file.write(chr(pix[x, y]))

file.close()
