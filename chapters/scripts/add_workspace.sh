#/bin/sh
lhdd='D E F'
users=`ls /home/`
for user in $users
do
        echo $user
        #sudo mount --bind /media/hdd/D /home/$user/workspace/D
        for hdd in $lhdd
        do
                user_dir=/home/$user/workspace/$hdd
                echo $user_dir
                if [ ! -f "$user_dir" ]; then
                        mkdir "$user_dir"
                fi
                mount --bind /media/hdd/$hdd $user_dir
        done

done
