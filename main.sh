#!/bin/bash


#source for other scripts
source ./functions/CreateDataBase.sh
source ./functions/ListDataBase.sh
source ./functions/ConnectToDataBase.sh
source ./functions/DropDataBase.sh
source ./functions/CreateTable.sh
source ./functions/ListTable.sh
source ./functions/DropTable.sh
source ./functions/InsertIntoTable.sh
source ./functions/SelectFromTable.sh
source ./functions/DeleteFromTable.sh
mkdir -p "$databases_dir"

main_menu() {
  while true; do
       
    echo "Main Menu:"
    echo "1. Create Database"
    echo "2. List Databases"
    echo "3. Connect to Database"
    echo "4. Drop Database"
    echo "5. Exit"
    read option
    case $option in
        1) create_database ;;
        2) list_databases ;;
        3) connect_to_database ;;
        4) drop_database ;;
        5) exit ;;
        *) echo "Invalid option." ;;
    esac
  done
}


main_menu