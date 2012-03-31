#!/usr/bin/env python

import sys
from wonder.plain2html import plain2html

src = file(sys.argv[1]).read()
print plain2html(src)
