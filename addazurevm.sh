ssh-keygen -f azurekey -N 'enterpasswordhere'
vagrant box add azure dummy.box --provider azure
vagrant plugin install vagrant-azure
vagrant up --provider=azure
read -n 1 -r -s -p $'Press enter to exit...\n'
