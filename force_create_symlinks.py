import os
import subprocess

def main():
    current_dir = os.path.dirname(os.path.realpath(__file__))
    subprocess.run("ln -s -f {} ~/.vimrc".format(os.path.join(current_dir, "vim/.vimrc")), shell=True, check=True)
    subprocess.run("ln -s -f {} ~/.skhdrc".format(os.path.join(current_dir, "skhd/.skhdrc")), shell=True, check=True)
    subprocess.run("ln -s -f {} ~/.yabairc".format(os.path.join(current_dir, "yabai/.yabairc")), shell=True, check=True)
    subprocess.run("ln -s -f {} ~/.config/fish".format(os.path.join(current_dir, "fish")), shell=True, check=True)
    subprocess.run("ln -s -f {} ~/.config/kitty".format(os.path.join(current_dir, "kitty")), shell=True, check=True)

if __name__ == "__main__":
    main()
