require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.vm.box = "opscode-ubuntu-12.04"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"

  config.vm.provision :chef_solo do |chef|
    chef.json = {
    }

    chef.run_list = [
      "recipe[dhcp-server::default]"
    ]
  end
end
