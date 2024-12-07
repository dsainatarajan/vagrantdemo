
cat <<EOF > Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "nomad-vm"
    vb.memory = "1024"
    vb.cpus = 2
  end
end

EOF

vagrant up

watch vboxmanage list vms