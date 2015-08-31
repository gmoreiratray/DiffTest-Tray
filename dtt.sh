#!/bin/bash

Version () {
    echo ""
    echo "DiffTest-Tray v1"
    echo ""
}

InstallDiffTest () {
    
    echo "Instalando DiffTest-Tray"
    sleep 1
    

    echo "Instalando Bower"
    bower install backstopjs
    
    echo "Acessando a  pasta backstopJs"
    cd bower_components/backstopjs
    
    echo "Instalando as dependências com NPM"
    npm install
    
    echo "Instalando o Gulp"
    sudo npm install gulp -g
    
    echo "Instalando o PhantomJs"
    sudo npm install phantomjs -g
    
    echo "Instalando o CasperJs"
    sudo npm install -g casperjs
    
    echo "Generate a test configuration template"
    gulp genConfig
    
    echo "✔ DiffTest-Tray instalado com sucesso"
}

#sh dtt.sh install opencode
if [ "$1" = "install" ]; then
    InstallDiffTest

#sh dtt.sh version
elif [ "$1" = "version" ]; then
    Version    

#sem parametros ou com parametros incorretos
else
    echo "✘ Funcao nao encontrada, leia a documentacao"
fi