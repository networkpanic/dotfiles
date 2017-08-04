echo rsync host to pull private parts?
read rsynchost

echo rsync port?
read rsyncport

echo syncing...
rsync -ar -e "ssh -p $rsyncport" $USER@$rsynchost:/home/$USER/dotfiles/private ~/dotfiles/private
