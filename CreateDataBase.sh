#!/bin/bash

 databases_dir="./databases"



    create_database() {
        echo "Enter the name of the database:"
        read db_name

        if [ -z "$db_name" ]; then
             echo -e "\nPlease enter a correct name\n"
            create_database # call the function again
   
        elif [ -d "$databases_dir/$db_name" ]; then
             echo -e "\nThis database name already exists, please choose another name\n"            
            create_database # call the function again


        else
            mkdir "$databases_dir/$db_name"
            echo "Database '$db_name' created."

        fi
        










    }




