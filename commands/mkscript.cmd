# Uses the default shell

#check if there is one argument
if (( $#==1 )) ; then
    NOMEFILE=$(ls | grep $1)
    if [[ "$1" = "${NOMEFILE}" ]] ; then
        echo "A file with this name already exists"
        exit 1
    else
        touch $1
        chmod u+x $1
        echo "File created successfully"
        ls -lh | grep $1
        exit 0
    fi
else
    echo "usage: mkscript [filename]"
    exit 1
fi
