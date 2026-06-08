# Use CJC
- Example usage of the cangjie compiler to generate IR

## Installation
- To use the static analysis tooling, a newer version of cjc is required. Pick the adequate [nightly build](https://gitcode.com/Cangjie/nightly_build/releases/1.1.0-alpha.20260608010034) for your system and arquitecture. For me it's [linux-x64](https://gitcode.com/Cangjie/nightly_build/releases/download/1.1.0-alpha.20260608010034/cangjie-sdk-linux-x64-1.1.0-alpha.20260608010034.tar.gz)
```bash
wget https://gitcode.com/Cangjie/nightly_build/releases/download/1.1.0-alpha.20260608010034/cangjie-sdk-linux-x64-1.1.0-alpha.20260608010034.tar.gz -o cangjie.tar.gz
tar xvf cangjie.tar.gz
source cangjie/envsetup.sh
cjc -v
``` 
- The CHIR dumping can be seen in the options
```bash
$ cjc -h | grep dump
  --dump-ast                  Dump human readable AST when compiling for debug
  --dump-chir                 Dump human readable CHIR when compiling for debug
  --dump-ir                   Dump human readable IR
  --dump-all                  Dump all of AST, CHIR, IR
  --dump-to-screen            Dump to screen instead of file
```


## First Example
- A simple code in this repo shows the IR. You can regenerate it with
```bash
# Clean what was before
rm -rf example_IR example_CHIR example_AST


# Compile with intermediates
cjc --dump-all example.cj
```