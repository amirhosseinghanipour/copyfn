# CopyFN Plugin for Oh My Zsh

A simple Oh My Zsh plugin that copies the filename (without the path) to your clipboard. This is useful when you want to quickly copy the name of a file in your terminal and paste it elsewhere.

## Features
- Extracts the filename from a full path.
- Copies the filename to your clipboard using `xclip` (Linux) or `pbcopy` (macOS).
- Easy to use with a single command.

## Installation
1. Clone this repository or download the `copyfn.plugin.zsh` file.
2. Create the plugin directory in your Oh My Zsh configuration:

```bash
mkdir -p $ZSH/plugins/copyfn
```
3. Move the copyfn.plugin.zsh script into the directory.
```bash
touch $ZSH/plugins/copyfn/copyfn.plugin.zsh
```
4. Paste the script content into the `copyfn.plugin.zsh` file.
5. Enable the plugin by adding `copyfn` to your `.zshrc` file's plugins section:
```bash
plugins=(git copyfn)
```
Reload your `.zshrc` configuration:
```bash
source ~/.zshrc
```

## Usage
To copy a file's name to your clipboard, run the following command in your alacritty (or in your favorite terminal!):
```bash
copyfn <filename>
```
This will copy `<filename>` to your clipboard.

## Requirements
- Linux: `xclip` must be installed.
- macOS: `pbcopy` must be available.

## License
MIT License. See [LICENSE](LICENSE) for more details.

## Note
Let me know if if the plugin doesn't work as promised on your end or behaves oddly. Also, feel free to tweak it further based on your preferences or any additional details you'd like to include!
