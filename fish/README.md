# Fish Shell Configuration

## Interactive guard to prevent slow wm event performance
I have surrounded most of my configuration options with the following: `if status --is-interactive`. This is due to `skhd` launching a non-interactive instance of fish to execute commands, and the plugins used in my fish configuration slow startup times considerably.

