#/bin/bash

FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip"

# Linux default
FONT_DIR=~/.local/share/fonts
# If machine is MacOS
if [[ $(uname) = "Darwin" ]]; then
	FONT_DIR=~/Library/Fonts/
fi

FILE=$(basename "$FONT_URL")

mkdir -p $FONT_DIR

echo "Downloading and applying ${FILE%.*} font..."
cd ${FONT_DIR} && curl -fLOs ${FONT_URL}

mkdir -p ${FILE%%.*} && cd $_

if [[ ${FILE#*.} =~ tar.* ]]; then
	tar xvf ../$FILE
else
	unzip ../$FILE -d ./
fi

cd - >/dev/null
rm -rf $FILE

fc-cache
