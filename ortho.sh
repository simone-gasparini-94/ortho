#!/bin/bash

name="$1"

name=${name^}

touch "$name.hpp"
touch "$name.cpp"
