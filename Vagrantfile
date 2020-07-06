Vagrant.configure('2') do |config|
  config.vm.box = 'azure'

  # use local ssh key to connect to remote vagrant box
  config.ssh.private_key_path = 'azurekey'
  config.vm.provision "shell", path: "script/installation.sh"
  config.vm.provision "shell", path: "script/dbconfig.sh"
  config.vm.provision "shell", path: "script/buildapplication.sh"
  config.vm.provision "shell", path: "script/addcontent.sh"
  config.vm.provision "shell", path: "script/editapacheserver.sh"
  config.vm.provider :azure do |azure, override|
	override.vm.synced_folder ".", "/vagrant", disabled: true
    # each of the below values will default to use the env vars named as below if not specified explicitly
    azure.tenant_id = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    azure.client_id = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    azure.client_secret = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
    azure.subscription_id = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'
	azure.resource_group_name='ekitabuwebserver_rg'
	azure.location = "southafricanorth"
	azure.vm_size = 'Standard_B1s'
	azure.vm_name='ekitabuserver'
	azure.vm_image_urn='Canonical:UbuntuServer:18.04-LTS:latest'
	azure.virtual_network_name='ekitabuwebserver_rg-vnet'
	azure.nsg_name = 'ekitabuwebservernsg'
	azure.tcp_endpoints = '80'
	  end
end