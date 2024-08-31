drop_table() {
    echo "Enter the table name to drop:"
    read table_name
   if [ -f "$database_path/$table_name"  ]; then
      rm  "$database_path/$table_name"
      echo "table '$table_name' dropped"    
   else
      echo "Table doesnt founded"   
    fi
}