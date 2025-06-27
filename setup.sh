#/bin/bash

# STOW_PATH=$HOME/dotfiles/stow

usage() {
    echo "
    usage: ./setup.sh [package | font] [-h, --help]

    Aplica os dotfiles que estão nesse repositório. É possível aplicar todos ou apenas um dos pacotes.

    options:
        package: O pacote que as configurações irão ser aplicadas. [optional]
        font: O script irá baixar e configurar o NerdFonts
        -h, --help: Mostra essa mensagem de ajuda com as opções do script. [optional]
    "
}

if [[ "$#" -gt 1 ]]; then
    echo "
    This script accept only 0 or 1 argument"
    usage
    exit 1
fi

# Maybe improve this block to case statement
if [[ $1 = '-h' ]] || [[ $1 = '-help' ]]; then
    usage
    exit 0
elif [[ $1 = 'font' ]]; then
    source ./scripts/install-fonts.sh
fi

if [[ -z $@ ]]; then
    for dir in $(ls -d */ | grep -v "scripts" | tr -d '/'); do
        echo $dir
        stow -D --target=$HOME $dir
    done

    stow --target=$HOME stow
else
    stow --target=$HOME $1 2>/dev/null

    if [[ $? -eq 1 ]]; then
        echo "[ERROR] The symbolic link already exists. Operation was not perfomed."
    fi
fi
