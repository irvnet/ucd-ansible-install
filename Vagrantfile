Vagrant.configure("2") do |config|


# ucd server
  config.vm.define "deploy" do |deploy|
    deploy.vm.box = "centos7-upd"
    deploy.vm.network "private_network", ip: "10.3.3.10"
    deploy.vm.hostname = "deploy"

    deploy.vm.provider "virtualbox" do |v|
      v.memory = 3024
    end

    deploy.vm.provision "shell", inline: "cat /vagrant/ansible-demo.pub >> /home/vagrant/.ssh/authorized_keys"
    deploy.vm.synced_folder "/Users/irvingr/_GRABS/arch-DEV-vm/_vm-bin-share", "/host"

  end

# liberty sit server
   config.vm.define "sit" do |sit|
     sit.vm.box = "centos7-upd"
     sit.vm.network "private_network", ip: "10.3.3.20"

     sit.vm.provider "virtualbox" do |v|
       v.memory = 2024
     end

     sit.vm.provision "shell", inline: "cat /vagrant/ansible-demo.pub >> /home/vagrant/.ssh/authorized_keys"
     sit.vm.synced_folder "/Users/irvingr/_GRABS/arch-DEV-vm/_vm-bin-share", "/host"
   end


   # liberty uat server
      config.vm.define "uat" do |uat|
        uat.vm.box = "centos7-upd"
        uat.vm.network "private_network", ip: "10.3.3.30"

        uat.vm.provider "virtualbox" do |v|
          v.memory = 2024
        end

        uat.vm.provision "shell", inline: "cat /vagrant/ansible-demo.pub >> /home/vagrant/.ssh/authorized_keys"
        uat.vm.synced_folder "/Users/irvingr/_GRABS/arch-DEV-vm/_vm-bin-share", "/host"
      end


# # TEST SERVER
#     config.vm.define "test" do |test|
#       test.vm.box = "centos7-upd"
#       test.vm.network "private_network", ip: "10.3.3.50"
#       test.vm.hostname = "deploy"
#
#       test.vm.provider "virtualbox" do |v|
#         v.memory = 2024
#       end
#
#       test.vm.synced_folder "/Users/irvingr/_GRABS/arch-DEV-vm/_vm-bin-share", "/host"
#
#     end



end
