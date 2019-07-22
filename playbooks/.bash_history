sudo yum update
ssh-keygen
ssh-copy-id ansible@18.139.209.8
ssh-copy-id ansible@localhost
sudo vim /etc/ansible/ansible.cfg 
sudo vim /etc/ansible/hosts 
ansible all --list-hosts
ansible all -m ping
ansible all -a "ls -a /home/ansible"
ansible all -a "cat /var/log/messages"
ansible demo -a -s "cat /var/log/messages"
ansible demo -a -S "cat /var/log/messages"
ansible all -a "cat /var/log/messages"
sudo vim /etc/ansible/ansible.cfg 
ansible all -a "cat /var/log/messages"
ansible demo -a -s "cat /var/log/messages"
ansible demo -m setup
ansible demo -s -m user -a "name=test"
ansible demo -m user -a "name=test"
ansible demo -m --sudo user -a "name=test"
ansible demo -m --become user -a "name=test"
ansible demo -m -K -a "name=test"
ansible demo -m  user  -a "name=test"
}
[ansible@ip-172-31-22-212 ~]$ ansible demo -m -K -a "name=test"
[ansible@ip-172-31-22-212 ~]$ ansible demo -m user --become-user root -a "name=test"
ansible demo --become-user root -m  user  -a "name=test"
ansible demo --become-user root -m  user  -a "name=test" --ask-pass -K --become
ansible demo --become-user root -m  user  -a "name=test state=absent" --ask-pass -K --become
ansible demo -m  user  -a "name=test state=absent" -K --become
ansible demo -m  user  -a "name=test state=absent" -K
ansible all -m yum -a "pkg=httpd state=present"
visudo
sudo visudo
ansible all -m service -a "name=httpd state=started"
systemctl status httpd.service
service httpd status
service httpd start
ansible all -m systemmd -a "name=httpd state=started"
ansible all -m systemd -a "name=httpd state=started"
ansible demo -m yum -a "name=httpd state=present"
ansible demo -m yum -a "name=httpd state=present" -u ansible --become --ask-become-pass
ansible all -m systemd -a "name=httpd state=started" --become --ask-become-pass
service httpd status
ansible all -m systemd -a "name=httpd state=started" --become
ansible all -m systemd -a "name=httpd state=stopped" --become
ansible all --become -m systemd -a "name=httpd state=stopped"
ansible all  -m systemd -a "name=httpd state=stopped"
ansible demo -m yum -a "name=httpd state=absent"
ansible demo --become -m yum -a "name=httpd state=absent"
service httpd status
ansible all  -m systemd -a "name=httpd state=started"
ansible demo  -m service -a "name=httpd state=started"
ansible demo --become -m service -a "name=httpd state=started"
ansible demo --become -m yum -a "name=httpd state=present"
ansible demo --become -m service -a "name=httpd state=started"
ansible demo -a --become "cat /var/log/messages"
ansible demo --become -a "cat /var/log/messages"
ansible all  --become -m user -a "name=test"
ansible all  --become -m user -a "name=test state=absent"
exit
ansible --version
exit
ansible demo  --become -m user -a "name=test"
ansible demo  --become -m user -a "name=test state=absent"
ansible demo --become -m yum -a "pkg=httpd state=present"
ansible demo --become -m yum -a "pkg=httpd state=absent"
ansible demo --become -m yum -a "pkg=httpd state=present"
ansible demo -m yum -a "pkg=httpd state=present"
ansible demo --become -m yum -a "pkg=httpd state=present"
ansible demo --become -m service -a "name=httpd state=started"
ansible demo --become -m service -a "name=httpd state=stopped"
ansible demo --become -m service -a "name=httpd state=restarted"
ansible all --list-hosts
vim /etc/ansible/hosts 
sudo vim /etc/ansible/hosts 
ansible all -m ping
ansible demo -m ping
sudo vim /etc/ansible/hosts
ansible demo -a "cat /var/log/messages"
ansible demo --become -a "cat /var/log/messages"
cat /var/log/messages
sudo cat /var/log/messages
ll /var/log/messages
sudo visudo
sudo cat /var/log/messages
ansible demo -a "cat /var/log/messages"
ansible all -m setup
ansible demo -m setup -a 'filter=*ipv4*'
ls
touch test.txt
ls
ansible demo -m copy -a "src=test.txt dest=/home/ansible/test.txt"
scp test.txt ansible@3.1.222.52:/tmp/test1.txt
ansible demo -m copy -a "src=test.txt dest=/tmp/test2.txt"
