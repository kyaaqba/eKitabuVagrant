ssh-keygen -f azurekey -N 'enterpasswordhere'
vagrant box add azure dummy.box --provider azure
vagrant plugin install vagrant-azure
vagrant up --provider=azure
pause
