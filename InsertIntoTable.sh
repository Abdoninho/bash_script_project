insert_into_table() {
    echo "Enter the table name:"
    read table_name
    values=""

 echo "enter the num of the column's table"   
 read counter

 for (( c=1; c<=$counter; c++ ))
 do
    echo "Enter values:"
     read value_definition

     if [ -z "$values" ]; then
            values="$value_definition"
        else
           values+=", $value_definition"
        fi
 done



    if [ -f "$database_path/$table_name" ]; then
        
        
        echo "$values" >> "$database_path/$table_name"
        echo "Values inserted into table '$table_name'."
    else
        echo "Table does not exist."
    fi
}




  
