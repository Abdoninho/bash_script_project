select_from_table() {
    echo "Enter the table name:"
    read table_name

    if [ -f "$database_path/$table_name" ]; then
        echo "Contents of table '$table_name':"
        cat "$database_path/$table_name"
    else
        echo "Table does not exist."
    fi
}