delete_from_table() {
    echo "Enter the table name:"
    read table_name

    if [ -f "$database_path/$table_name" ]; then
        > "$database_path/$table_name"  
        echo "All rows deleted from table '$table_name'."
    else
        echo "Table does not exist."
    fi
}
