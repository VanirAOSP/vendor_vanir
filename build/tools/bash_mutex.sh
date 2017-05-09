function random() {
  bc <<< "scale=2; $(printf '0.%02d' $(( $RANDOM % 100))) / 2"
}

# https://gist.githubusercontent.com/brendan-w/4fde0934fef759ac55b9/raw/1c8cad60db54eb720c5a45c9ff93a31d57ec9559/bashlock.sh
function lock {
    if [ "$#" -ne 1 ]; then
        echo 'usage: lock [LOCKFILENAME]' 1>&2
        return 1
    fi

    LOCKFILE="$1"

    # make a file with our PID
    # easy way to show who's waiting for a lock
    if ! touch "$LOCKFILE.$$" ; then
        echo "failed to create PID lockfile: $1" 1>&2
        return 1
    fi

    # try to symlink it
    while ! ln "$LOCKFILE.$$" "$LOCKFILE" 2>/dev/null
    do
        # if the symlink failed, wait for the current lock holder to exit
        sleep $(random)
    done

    # symlink was created successfully, lock acquired

    # if the locking process exits with unlocking, delete our lock
    trap 'rm -f "$LOCKFILE" "$LOCKFILE.$$"' EXIT

    return 0
}


function unlock {
    if [ "$#" -ne 1 ]; then
        echo 'usage: unlock [LOCKFILENAME]' 1>&2
        return 2
    fi

    rm -f "$LOCKFILE" # the symlink that locks are competing for
    rm -f "$LOCKFILE.$$" 

    return 0
}
