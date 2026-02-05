## Description

Bash script that generates C++ class boilerplate following the Orthodox Canonical Form.

The script will generate in the current working directory 2 files:
- `.hpp` file with the class definition
- `.cpp` file with the function definitions

For more information about OCF, [click me](https://riceset.com/C++/The-Orthodox-Canonical-Class-Form).

## How to run

**Note: This tool requires [Docker](https://www.docker.com/)**

### ARM Architecture

Run this command replacing `ClassName` with the class name:

```bash
docker run --rm -v "$(pwd)":/script sgasparini/ortho ClassName
```

### x86_64 Architecture

```bash
git clone https://github.com/simone-gasparini-94/ortho.git
```

```bash
cd ortho
```

```bash
docker build -t ortho .
```

```bash
docker run --rm -v "$(pwd)":/script ortho ClassName
```