#!/bin/bash

ansible() {
    
    ### ANSIBLE INSTALL
    echo "Iniciando instalação do ansible..."

    apt-get update > /dev/null 2>&1 && \
    apt-get install software-properties-common sshpass -y > /dev/null 2>&1 && \
    apt-add-repository -y ppa:ansible/ansible > /dev/null 2>&1 && \
    apt-get update > /dev/null 2>&1 && \
    apt-get install ansible > /dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "Instalação do ansible falhou"
        exit 1
    else
        echo "Instalação do ansible concluída com sucesso!"
    fi

    echo "Criando par de chaves..."
    test -f /etc/keys/key
    if [ $? -ne 0 ]; then
        mkdir /etc/keys/ && \
        ssh-keygen -b 2048 -t rsa -f /etc/keys/key -q -N "" > /dev/null 2>&1
    fi
    echo "Chaves criadas com sucesso!"
    echo "Cadastrando chaves no host.."

    ## TODO
    ## Checar se maquinas estao ligadas

    sshpass -p 4linux ssh-copy-id -i /etc/keys/key.pub root@automation > /dev/null 2>&1 && \
    sshpass -p 4linux ssh-copy-id -i /etc/keys/key.pub root@docker > /dev/null 2>&1
    
    if [ $? -ne 0 ]; then
        echo "Falha ao cadastrar chaves"
        exit 1
    else
        echo "Chaves cadastradas com sucesso!"
    fi
}

main() {
    ansible
}

main
