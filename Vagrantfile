VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-7.0"
  config.vm.synced_folder "salt/roots", "/srv/salt/"
  config.vm.provision :salt do |salt|
    salt.install_type = ""
    salt.install_args = "-g https://github.com/umireon/salt.git git dockerio-retcode-is-broken"
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end
end
