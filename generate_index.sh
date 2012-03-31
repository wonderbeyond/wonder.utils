#!/bin/bash
# Author: Wonder
# Description: 该脚本用来为当前目录生成 html 索引文件(index.html)

echo "<table>"
echo "<th>Content of /$(basename `pwd`):</th>"
for f in *; do
    echo "<tr><td><a href=\"$f\">$f</a></td></tr>"
done
echo "</table>"

