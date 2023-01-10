# Text from speech

A command line interface (CLI) wrapper on Apple's [Speech Framework](https://developer.apple.com/documentation/speech) converts audio files into text. The program is written in Swift, and it uses the SFSpeechRecognizer class to perform speech recognition on an audio file.

## Getting Started

These instructions will guide you on how to install and use the Speech to Text program on your local machine.

### Prerequisites
  - Swift
  - make (if you want to use the provided Makefile)

### Installation
  1. Clone the repository:
   ```bash
     git clone https://github.com/caiobep/text-from-audio.git
   ```

  2. Change the current directory to the project's directory:
   ```bash
     cd Speech-to-Text 
   ```

### Usage
The program can be run by providing the path to the audio file as a command line argument. For example:

```bash
  swift main.swift -f /path/to/audio/file.m4a

```
or

```
swift main.swift --file /path/to/audio/file.m4a

```

### Makefile
Alternatively, you can use the provided Makefile to build and run the program. To do this, make sure you have make installed on your system and run the following command:

```bash
make run

```

## Troubleshooting

If you encounter any issues, please check the following:

Make sure that the path to the audio file is correct.
Make sure that the audio file is in a supported format (e.g. .m4a, .mp3, .wav).
Make sure that you have the latest version of Xcode and Swift installed.


## License

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.

## Acknowledgments
  - [Speech Framework](https://developer.apple.com/documentation/speech) for providing the speech recognition functionality.

