# Math rendering

- To make math render without errors in packages such as matplotlib to work,
you may have to install latex in several ways. For example:
    1. pip install latex
    2. sudo apt install texlive-latex-base
    3. sudo apt install texlive-latex-extra
    4. sudo apt install cm-super
    5. sudo apt install dvipng

- It's recommended to use gnu stow to symbolically link dot files (like .config files)
so that you can git control them and keep them safe on github.