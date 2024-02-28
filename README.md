# Dotfiles :open_file_folder:

- Meus dotfiles de configuração gerenciados pelo [GNU Stow](https://www.gnu.org/software/stow/manual/stow.html)

## Requirements:
A unica coisa que você irá precisar é do `stow` instalado na sua máquina. É possível ver como instalar [aqui](https://github.com/aspiers/stow/blob/master/INSTALL.md).

## Usage:
Dentro da raiz do repositório, você pode executar o script de setup para realizar a configuração geral ou específica. Na geral, ele irá aplicar todos os arquivos de configurações como links simbólicos no home do seu usuário. Caso contrário, se você especificar um pacote, ele irá linkar apenas o que foi passado como argumento. Caso esse link já exista, ele irá jogar uma exceção (se já existe, não faz sentido você querer realizar essa operação).

OBS: É importante garantir que os scripts tenham permissão de execução para o usuário.

Aplica a configuração para todos os arquivos e diretórios:
```
./setup 
```

Aplica a configuração para um pacote específico:
```
./setup [package]
```

Aplica as configurações de fonte. Por padrão, **Fira Code**:
```
./setup font
```

Uso geral:
```
./setup [package | font | -h | --help]
```

É possível mudar qual fonte você deseja instalar mudando o link para download no arquivo `./scripts/install-fonts.sh`

Para remover uma configuração aplicada, é necessário rodar:
```
cd stow/ && stow -D --target=$HOME [package] && cd -
```

