Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.network "public_network"
  config.vm.provision "shell", path: "/home/pjsjr/Documentos/Bootcamp - Cloud DevOps Experience - Banco Carrefour/Scripts/scriptIAC.sh"
  config.vm.provision "shell", inline: "apt install samba -y && systemctl restart smbd && systemctl enable smbd && mkdir /BACKUP/publica && chmod 777 /BACKUP/publica"
  config.vm.provision "shell", inline: "apt install apache2 -y && systemctl restart apache2 && systemctl enable apache2"
  config.vm.provision "shell", inline: "apt install mysql-server-8.0 -y"
    
  config.vm.provider :virtualbox do |vb|
    vb.name = "BootCamp_DIO"
    
  end
end
  
