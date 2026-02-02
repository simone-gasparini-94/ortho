## Description

Bash script that generates C++ class boilerplate following the Orthodox Canonical Form.

The Orthodox Canonical Form involves defining:
- Default Constructor
- Copy Constructor
- Assignment Operator
- Destructor

For more information about OCF, [click me](https://riceset.com/C++/The-Orthodox-Canonical-Class-Form).

## How to run

**Note: This tool requires [Docker](https://www.docker.com/)**

Run this command replacing `<ClassName>` with the class name:

`docker run --rm -v "$(pwd)":/script sgasparini/ortho <ClassName>`



