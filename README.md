# Easy2 - Estim Audio SYthesizer 2

What is Easy 2? Easy 2 is a simplified audio generation utility designed for
the creation of sound effects, test signals, and stim files. It is not designed
to be a music audio synthesizer.

An Easy2 guide will be included in the distribution: easy2_howto.doc

Syntax has been designed to be as simple as possible with backup defaults.

For example, the simplest file is:
```
output "firstsound.wav"
sound 10
```

To run this script:
```
easy2 simplest.e2
```

...and this will make a 1000Hz sine wave sound, 10 seconds long, with a short fadein. This file will be in standard 16-bit .wav file format.


Easy2 has a group of time-based audio modifiers, known as "Number Drivers". These
can be used to vary parameters such as volume, frequency, and phase. Examples are:

 * osc (oscillator) with various waveforms
 * ramp (linear change)
 * ramps (multiple linear changes)
 * seq (sequence)

Easy2 also offers some modifiers that can be used on the created output audio before
it is written out to the file.

Easy2 can do very basic math, repeats, and loops. It can precisely move
forward/back in time to build up complex audio.

Easy2 can work on right/left channels independently or together. It can use a
balance command to dynamically control the audio across the two channels.


How does the code work?

Look at ```src/easy_code.cpp``` as a starting point.
It uses Lex **but not Yacc**. If you aren't familiar with Lex, it's a tool that does
the work of developing parsers.
Most of the code is C++, written mostly in a C-like style.

## Installation

Easy2 is a command line application.

On Linux, just copy the "easy2" executable.
On Windows, copy the "easy2.exe" executable plus BOTH .dll files.

See the ***releases*** page on the site for releases.

Additional examples are in the ```est``` and ```t1``` directories.

## Building on Linux

Install:
 * [Meson](https://mesonbuild.com/)
 * [Ninja](https://github.com/ninja-build/ninja)
 * [Flex](https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator))
 * [GCC](https://gcc.gnu.org/)

Shorthand for Ubuntu
```bash
sudo apt install -y flex build-essential meson ninja-build
```

Build the executable as follows
```
meson build
ninja2 -C ./build
# Optional Install
ninja2 -C ./build install
```

The executable is ```easy2```.

## Building on Windows MSVC++ Build Tools

How to build on Windows:

Using Visual Studio C++ is a waste your time.
Instead, install MingW tools including gcc and g++
You'll also need Flex for Windows: http://gnuwin32.sourceforge.net/packages/flex.htm
Manually generate the lex.yy.c file with "flex easy2.l"
Lastly, the easy2.exe target is in the Makefile and works:
"make easy2.exe"






