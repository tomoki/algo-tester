if [ $# -le 1  ]
then
    echo "Pass program and testcase number as argument."
    echo "ex: $0 ./a.out 2"
    exit 1
fi


TIME=2s
prg=$1
input=case/$2.in
output=case/$2.out

if [ -e $input ]
then
    if [ -e $output ]
    then
        tmp=`mktemp`
        time timeout $TIME $prg < $input > $tmp
        d=`diff $output $tmp -Z`
        if [ ${#d} -eq 0 ]
        then
            echo -e "\033[0;32mCorrect\033[0;39m"
            rm $tmp
            exit 0
        else
            echo -e "\033[0;31mFailed\033[0;39m"
            echo "Expected:"
            cat $output
            echo "Output:"
            cat $tmp
            rm $tmp
            exit 0
        fi

    else
        echo -e "\033[0;31mFailed <- $output not found\033[0;39m"
        exit 0
    fi
else
    echo -e "\033[0;31mFailed <- $input not found\033[0;39m"
    exit 0
fi

