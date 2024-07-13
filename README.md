# Debugear una aplicacion en PHP con Docker en Visual Studio

Este repositorio es para que los desarrolladores que quieren poder debugear una aplicacion en PHP dentro de un contenedor de docker usando Visual Studio Code.

*PHP Framework: CodeIgniter*

*Nota: Esto aplica para cualquier framework, pero se debe de modificar el archivo [entrypoint.sh](https://github.com/whatdacode/php-docker-vscode/blob/main/entrypoint.sh)* 

## Pasos para crear el entorno

1. Creacion del archivo [docker-compose.yml](https://github.com/whatdacode/php-docker-vscode/blob/main/docker-compose.yml)
2. Creacion del archivo [Dockerfile](https://github.com/whatdacode/php-docker-vscode/blob/main/Dockerfile)
3. Creacion del archivo [entrypoint.sh](https://github.com/whatdacode/php-docker-vscode/blob/main/entrypoint.sh)
4. Creacion del archivo [xdebug.ini](https://github.com/whatdacode/php-docker-vscode/blob/main/xdebug.ini)

## Pasos para poder debugearlo

1. Creacion de carpeta .vscode si es que no la tienes ya creada
2. Creacion del archivo [launch.json](https://github.com/whatdacode/php-docker-vscode/blob/main/.vscode/launch.json) dentro de la carpeta .vscode

## Pasos para debugear

1. Debes ejecutar docker-compose up -d --build o docker compose up -d --build si estas utilizando la version 2 de Docker Desktop
2. Ir a la seccion *Run adn Debug* y ejecutar *Escuchar Xdebug* o el nombre que le hayas puesto a la configuracion