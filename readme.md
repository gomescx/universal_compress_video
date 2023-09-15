# Video Compression ZSH Script

This repository contains a zsh script for compressing `.mov` videos. This is particularly useful for compressing system demonstration videos or regular movies. The script is designed to run on macOS Catalina and above.

## Use case - why you want this

Say you're recording a screen (or sections of a screen) on a Mac to show someone else how to use a system or do a job for you. On a macbook for instance, you would record a screen by pressing (command)-(shift)-(5). 

A typical 10 minutes screen recording will result on a 500 MB file (1/2 GB). Just to put this in context, this what you consume on 1 WHOLE HOUR of video streaming :O on your laptop !!!

Instead, you can run this script to reduce the filesize by 95%.

Instead of uploading a 500 MB file, you upload a 10 MB file which is about 3 minutes of streaming ;)

## Dependencies

- ffmpeg: You can install it using Homebrew with `brew install ffmpeg`.

## Installation

1. Clone this repository or download the `.zsh` file.
2. Make the script executable by running `chmod +x compress_video.zsh`.
3. Optional: Move the script to a directory that's in your `$PATH` to make it accessible from anywhere.

### Option 1: Local bin directory

Create a `bin` directory in your home directory:

```bash
mkdir ~/bin
```

Move the script to this directory:

```bash
mv /path/to/compress_video.zsh ~/bin/
```

Add the directory to your `$PATH` by adding the following to your `.zshrc`:

```bash
export PATH="$PATH:$HOME/bin"
```

### Option 2: Global `/usr/local/bin`

Move the script to `/usr/local/bin/` (requires administrative access):

```bash
sudo mv /path/to/compress_video.zsh /usr/local/bin/
```

## Usage

You can run the script with the following command:

```bash
./compress_video.zsh [full-path-filename] [type-of-video]
```

- `full-path-filename`: The full path to the `.mov` video file you want to compress.
- `type-of-video`: Either "system" for system demonstration videos or "movie" for regular movies.

### Examples

1. For system videos: 
```bash
./compress_video.zsh /path/to/your/file.mov system
```

2. For regular movies:
```bash
./compress_video.zsh /path/to/your/file.mov movie
```

If you run the script without any parameters, it will ask for them interactively. The type of video will default to "system" if you don't specify it.

## License

This project is open source, feel free to use, modify and distribute.

## Contributing

Contributions are welcome! Please feel free to open an issue or create a pull request.