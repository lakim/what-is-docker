Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-12.04-server-amd64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network :private_network, ip: "33.33.33.33"
  config.vm.network :forwarded_port, guest: 4567, host: 4567
  # Update the Linux kernel to 3.8 for Docker to function properly
  config.vm.provision :shell, inline: %Q{
    sudo apt-get update
    sudo apt-get install -y linux-image-generic-lts-raring linux-headers-generic-lts-raring
  }
  config.vm.provision :docker
  # Uncomment this line if your VM is slow
  # config.vm.synced_folder "./", "/vagrant", type: "nfs"
end
