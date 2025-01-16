SHORT=m:,r:,c:,h
LONG=make,run,clean,help


while :
do
    case "$1" in
        -m | --make)
            make
            exit 0
            ;;
        -r | --run)
            ./main
            exit 0
            ;;
        -c | --clean)
            make clean
            exit 0
            ;;
        --)
            exit 0
            break
            ;;
        -h | --help)
            echo "Options:"
            echo "-m | --make: Compile the program"
            echo "-r | --run: Run the program"
            echo "-c | --clean: Clean the program"
            echo "-h | --help: Display help"
            exit 0
            ;;
    esac
done    