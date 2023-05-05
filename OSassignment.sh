loop=0

while [ $loop -eq 0 ]
do
    echo "Please select an option:"
    echo "1. List files"
    echo "2. Show free disk space"
    echo "3. Show system path"
    echo "4. Display command history"
    echo "5. Backup files"
    echo "6. Exit"

    read -p "Enter your choice: " option

    case $option in
        1)
            ls
            option=0
            ;;
        2)
            df
            option=0
            ;;
        3)
            $PATH
            option=0
            ;;
        4)
            history
            option=0
            ;;
        5)
            read DB
            mkdir BackupFolder
            cp -r $DB BackupFolder
            ls BackupFolder
            option=0
            ;;
        6)
            loop=1
            ;;
        *)
            echo "Invald option given."
            ;;
    esac
done

echo "Exiting..."
exit 0
