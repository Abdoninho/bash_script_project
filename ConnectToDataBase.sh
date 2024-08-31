  database_path=""
  connect_to_database() {
    echo "Enter the name of the database to connect to:"
    read db_name
    if [ -d "$databases_dir/$db_name" ]; then
        database_path="$databases_dir/$db_name"
        db_menu
    else
        echo "Database does not exist."
    fi


}




db_menu() {
    while true; do
        echo "Database Menu:"
        echo "1. Create Table"
        echo "2. List Tables"
        echo "3. Drop Table"
        echo "4. Insert into Table"
        echo "5. Select from Table"
        echo "6. Delete from Table"
        echo "7. Update Table"
        echo "8. Exit to Main Menu"
        read option
        case $option in
            1) create_table ;;
            2) list_tables ;;
            3) drop_table ;;
            4) insert_into_table ;;
            5) select_from_table ;;
            6) delete_from_table ;;
            7) update_table ;;
            8) break ;;
            *) echo "Invalid option." ;;
        esac
    done
}




