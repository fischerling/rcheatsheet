#!/bin/env python3

import os
import re
import subprocess

code_format = "```{0}\n{1}\n```"
code_re = re.compile("<c (.*)>(.*)<\/c>")

def main():
    while True:
        try:
            s = input()
        except EOFError as e:
            break
        m = re.search(code_re, s)
        if m:
            pandoc = subprocess.Popen(["pandoc","-f", "markdown", "-"],
                universal_newlines=True, stdin=subprocess.PIPE,
                stdout=subprocess.PIPE)
            code, err = pandoc.communicate(input=code_format.format(m.group(1), m.group(2)))
            pandoc.kill()
            s = re.sub(code_re, code, s)
            s = s.replace('\n', '')
        print(s)

    
if __name__ == "__main__":
    main()
