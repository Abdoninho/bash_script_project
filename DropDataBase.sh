
databases_dir="./databases"

drop_database() {
    echo "Enter the name of the database to drop:"
    read dbname
    if [ -d "$databases_dir/$db_name" ]; then
        rm -r "$databases_dir/$db_name"
        echo "Database '$db_name' dropped."
    else
        echo "Database does not exist."
    fi
}
