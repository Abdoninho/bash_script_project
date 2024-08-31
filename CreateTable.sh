create_table () {
 echo "enter the table name"
 read table_name
 

 echo "enter the num of columns you want"   
 read counter
 columns=""

    for (( c=1; c<=$counter; c++ ))
 do 
     echo "Enter column names and types"
     read column_definition

     if [ -z "$columns" ]; then
            columns="$column_definition"
        else
            columns+=", $column_definition"
        fi
 done
 

 echo "Enter primary key column:"
 read primary_key

  

 if [ -f "$database_path/$table_name" ]; then
        echo "Table already exists."
    else
        echo "$columns" > "$database_path/$table_name"
        echo "Table '$table_name' created with columns: $columns"
        

    fi   



}