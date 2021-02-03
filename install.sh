#!/bin/bash

source ./env/masterInstall.conf

function Master_v1.18.8 {
    echo ""
}

function Node_v1.18.8 {
    echo ""
}

function SelectMasterVersion {
    echo "2.1. Choose to install Kubernetes Master version"
    echo -e "\033[1;32m 01.\033[0mKubernetes master v1.18.8"
    echo -e "\033[1;32m 02.\033[0mKubernetes master v1.17.1"
    read -p "Select the version of Kubernetes Master that you want to install: " mstnm
        if [[ ! $mstnm =~ ^['1','2']$ ]]; then
            echo -e "\033[1;32mIncorrect input. Please enter the specified number '1' or '2'\033[0m"
        else
            if [[ $mstnm == '1' ]]; then
                # Master_v1.18.8
                echo "Master_v1.18.8"
            fi
            if [[ $mstnm == '2' ]]; then
                # Master_v1.17.1
                echo "Master_v1.17.1"
            fi
        fi
}

function SelectNodeVersion {
    echo "2.2. Choose to install Kubernetes Node version"
    echo -e "\033[1;32m 01.\033[0mKubernetes node v1.18.8"
    echo -e "\033[1;32m 02.\033[0mKubernetes node v1.17.1"
    read -p "Select the version of Kubernetes Node that you want to install: " nodnm
        if [[ ! $nodnm =~ ^['1','2']$ ]]; then
            echo -e "\033[1;32mIncorrect input. Please enter the specified number '1' or '2'\033[0m"
        else
            if [[ $nodnm == '1' ]]; then
                # Node_v1.18.8
                echo "Node_v1.18.8"
            fi
            if [[ $nodnm == '2' ]]; then
                # Node_v1.17.1
                echo "Node_v1.17.1"
            fi
        fi
}

# select
echo "Welcome to the Kubernetes installation script"
echo "Github：https://github.com/matt-pei/kubernetes_install"

while :; do
echo "1. Please choose to install Kubernetes cluster module:"
echo -e "\033[1;31m 1.\033[0mInstall Master"
echo -e "\033[1;31m 2.\033[0mInstall Node"
read -p "Please enter the selection number: " nm
    if [[ ! $nm =~ ^['1','2']$ ]]; then
        echo -e "\033[1;36m"Input error! Please enter the specified number '1' or '2'"\033[0m"
    else
        if [[ $nm == '1' ]]; then
            # echo "安装master"
            SelectMasterVersion
            break
        fi
        if [[ $nm == '2' ]]; then
            # echo "安装node"
            SelectNodeVersion
            break
        fi
    fi
done




