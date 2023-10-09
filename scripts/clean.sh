#! /bin/bash

normal=$(tput sgr0)
red=$(tput setaf 1)
yellow=$(tput setaf 3)
green=$(tput setaf 2)

function green () {
    echo ${green}$1${normal}
}

function yellow() {
    echo ${yellow}$1${normal}
}

function red () {
    echo ${red}$1${normal}
}

green "═══ start ptrack clean.sh ═══"

if [[ -n "${PTRK_PYTHON_VENV}" ]]; then
    if [[ -d "${PTRK_PYTHON_VENV}" ]]; then
        green "removing ${PTRK_PYTHON_VENV}"
        rm -r "${PTRK_PYTHON_VENV}"/
    fi
fi

yellow "make sure to run source ./scripts/env.sh from a new terminal to setup the environment properly"

green "═══ end ptrack clean.sh ═══"