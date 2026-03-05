# aif2wav

A small macOS command-line tool that converts **AIFF (.aif / .aiff)** files to **WAV**, while preserving:

- original **sample rate**
- original **bit depth / sample format**

It creates WAV files **next to the original AIFF files**, leaving the originals untouched.

---

# Features

- Convert a **single AIFF file**
- Convert **entire folders recursively**
- **Preserves sample rate** (44.1k stays 44.1k, 48k stays 48k)
- Attempts to **preserve bit depth**
- Skips files when the `.wav` already exists
- Prevents accidental full-disk scans

---

# Requirements

macOS with:

- Terminal
- Homebrew
- ffmpeg

---

# Installation

## 1 Install Homebrew

Open Terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Verify installation:

```bash
brew --version
```

---

## 2 Install ffmpeg

```bash
brew install ffmpeg
```

Verify installation:

```bash
ffmpeg -version
ffprobe -version
```

---
## Optional: install as a global command

If you want to run `aif2wav` from anywhere (without using `./`), you can install it globally.

Run:

chmod +x install.sh
./install.sh

After that you can run:

aif2wav --help
aif2wav /path/to/samplepack

# Usage

Download this repository and open Terminal in the project folder.

Make the script executable:

```bash
chmod +x aif2wav
```

---

## Convert a single file

```bash
./aif2wav kick.aif
```

Output:

```
kick.wav
```

---

## Convert a folder

```bash
./aif2wav /path/to/samplepack
```

This converts **all .aif and .aiff files recursively**.

---

## Drag & Drop workflow

Type:

```bash
./aif2wav 
```

Then drag a file or folder into Terminal and press **Enter**.

---

# Output behavior

Example:

```
kick.aif  →  kick.wav
pad.aiff  →  pad.wav
```

The original files remain unchanged.

---

# License

MIT
