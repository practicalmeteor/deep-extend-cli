#!/bin/bash -xe

bin/deep-extend test/obj1.json test/obj2.json
bin/deep-extend $PWD/test/obj1.json $PWD/test/obj2.json
bin/deep-extend nofile1.json $PWD/test/obj1.json nofile2.json $PWD/test/obj2.json
