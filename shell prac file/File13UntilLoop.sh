#!/bin/bash

#Until Loop work until condition is false

a=10

until [[ $a -eq 1 ]]
do
    echo $a
    let a--
done