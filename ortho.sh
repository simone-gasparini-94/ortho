#!/bin/bash

name="$1"

name=${name^}

header=$(cat <<EOF
#ifndef ${name^^}_HPP
# define ${name^^}_HPP

class $name {
private:
    // Add here the class attributes
public:
    $name();
    $name(const $name &other);
    $name &operator=(const $name &other);
    ~$name();
    // Add here the member functions
};

#endif
EOF
)

source=$(cat <<EOF
#include "${name}.hpp"
#include <iostream>

$name::$name() {
    std::cout << "$name Default Constructor Called" << std::endl;
}

$name::$name(const $name &other) {
    std::cout << "$name Copy Constructor Called" << std::endl;
}

$name & $name::operator=(const $name &other) {
    if (this != &other) {

    }
    std::cout << "$name Assignment Operator Called" << std::endl;
    return *this;
}

$name::~$name() {
    std::cout << "$name Destructor Called" << std::endl;
}
EOF
)

echo "$header" > "$name.hpp"
echo "$source" > "$name.cpp"