#!/bin/bash
# Programa comandos básicos de docker
#Autor:ALex:D - @soygeekgirl

option=0
options=("Version de docker", "Buscar una imagen", "Traer una imagen", "Traer y ejecutar una imagen", "Ver imagenes", "Eliminar imagen", "Información de docker", "Ingrese una opción", "Salir")
while :
do 
  #Limpiar pantalla
  clear
  #Pintar opciones
  echo "-------------------------------------------"
  echo "------ ╔═════════════════════════╗ --------"
  echo "------ ║   Algunos comandos      ║ --------"
  echo "------    de docker por Alex!! ♥   --------"                           
  echo "------ ╚═════════════════════════╝ --------"
  echo "-------------------------------------------"
  echo "            MENÚ PRINCIPAL                 "
  echo "-------------------------------------------"
  for ((i=0; i < ${#options[*]}; i++))
  do
    echo -e "\n $((i+1)).${options[$i]}"
  done
  echo "-------------------------------------------"
# Recibir opción del usuario
  read -n1 -p "Ingrese una opción [1-9]: " option
 # validar la opción ingresada
    case $option in 
      1)
          echo -e "\n  El comando: $ docker -v , permite obtener la versión de docker"
          docker -v
          sleep 6
          ;;
      2)
          echo -e "\n  El comando: $ docker search <nombre>, permite buscar imagenes de docker"
          read -p "Introduce un nombre: " imageName
          docker search $imageName
          sleep 6
          ;;
      3)
          echo -e "\n  El comando: $ docker pull <nombre>, permite buscar imagenes de docker"
          read -p "Introduce un nombre: " imageName
          docker pull $imageName
          sleep 10
          ;;
      4)
          echo -e "\n  El comando: $ docker run <nombre>, permite buscar imagenes de docker y ejecutar "
          read -p "Introduce un nombre: " imageName
          docker run $imageName
          sleep 10
          ;;
      5)
          echo -e "\n  El comando: $ docker images, permite ver las imagenes de docker "
          docker images
          sleep 10
          ;;
      6)
          echo -e "\n Eliminar imagen de docker por su nombre con el comando $ docker images rm <name>"
          read -p "Introduce nombre del contenedor " value
          docker images rm $value 
          sleep 10
          ;;
      7)
          echo -e "\n Recibe información de docker con $ docker info"
          docker info
          sleep 10
          ;;
      8)
          read -p "Introduce una opción: " value
          echo -e "\n Tú opción es:  $value "
          ;;
      9)
          echo -e "\nBYE-BYE"
          exit 0
          ;;
    esac
done
