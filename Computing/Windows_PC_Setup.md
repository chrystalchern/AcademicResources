# Windows PC Setup for Linux, Python, and GitHub

1. In PowerShell, run ``wsl --install``.  Once WSL is installed, you can run linux operating systems on your Windows PC.
2. Install your favorite linux distribution(s). One option is the one on the [Microsoft Store](https://ubuntu.com/desktop/wsl).
3. Open Windows Terminal and select the linux operating system. Now you can use linux.
4. To install Python and conda package management, install miniforge for the linux system from the command line as specified by the [GitHub README](https://github.com/conda-forge/miniforge?tab=readme-ov-file).  Now you can run Python and manage your environments with conda.
5. Add an SSH key for GitHub and clone your repositories using the instructions on [this page](https://phoenixnap.com/kb/git-clone-ssh). If you see a message along the lines of ``The authenticity... can't be established... Are you sure you want to continue...?``, just reply `yes`.  Now you can push and pull to GitHub from the command line.
