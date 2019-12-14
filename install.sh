#!/usr/bin/env bash

DIR=$(pwd)

sudo apt-get --assume-yes install \
    vim

$(cd ${HOME} && ln -s ${DIR}/.vimrc .vimrc)
