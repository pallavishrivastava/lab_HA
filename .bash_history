ansible all --list-hosts
ansible all -m ping -v
vi /etc/ansible/hosts
yum install gcc krb5-devel krb5-workstation  
yum install gcc
pip install pywinrm
yum install python-pip
pip install pywinrm
yum install python-setuptools
ansible windows -m win_ping
cd /etc/ansible/roles
ls
cd ..
ls
cd roles
ls
cd /var/lib
ls
cd ..
cd ..
cd ..
cd ../..
cd /etc/ansible/roles
ls
cd /var/lib
ls
cd ..
cd ..
cd /etc/ansible
ls
cd roles
ansible-galaxy init win_ad_install
ls
cd win_ad_install/
ls
cd tasks
;ls
ls
vi main.yml 
pip install --upgrade pip
pip install pywinrm[kerberos]
yum install gcc
pip install pywinrm[kerberos]
yum install python-pip
pip install pywinrm[kerberos]
yum install python-devel
pip install pywinrm[kerberos]
export GUID=`hostname | awk -F"." '{print $2}'`
export GUID_CAP=`echo ${GUID} | tr 'a-z' 'A-Z'
export GUID_CAP=`echo ${GUID} | tr 'a-z' 'A-Z'`
cat << EOF > /etc/krb5.conf.d/ansible.conf
vi /etc/krb5.conf.d/ansible.conf
kinit administrator@AD1.${GUID_CAP}.EXAMPLE.OPENTLC.COM
kinit administrator@AD1.FB4D.EXAMPLE.OPENTLC.COM
vi /etc/krb5.conf.d/ansible.conf
kinit administrator@AD1.FB4D.EXAMPLE.OPENTLC.COM
vi /etc/ansible/hosts
kinit administrator@AD1.FB4D.EXAMPLE.OPENTLC.COM
klist
cd /etc/ansible
ls
cd roles
ls
ansible-galaxy init win_service_config 
ls
cd win_service_config/
ls
cd tasks
ls
vi main.yml 
cd ..
ls
cd vars
ls
vi ssh_var.yml
cd ..
ls
vi win_ssh_server.yml
ls
cd tasks
ls
vi main.yml 
cd ..
ls
vi win_ssh_server.yml 
ls
cd tasks
ls
vi main.yml 
cd ..
ls
cd vars
ls
vi ssh_var.yml 
ls
vi main.yml 
rm -f ssh_var.yml 
ls
cd ..
ls
rm -f win_ssh_server.yml 
ls
vi site.yml
ls
ansible-playbook site.yml
ls
cd vars
ls
vi main.yml 
cd ..
ls
cd tasks
ls
vi main.yml 
cd ..
ansible-playbook site.yml 
ls
cd tasks
ls
vi main.yml 
cd ..
ls
ansible-playbook site.yml
cd ..
ls
cd win_service_config/
ls
cd tasks
ls
vi main.yml 
cd ..
vi main.yml 
cd tasks
vi main.yml 
vi ../vars/main.yml 
cd ..
ansible-playbook site.yml 
ls
cd tasks
ls
vi main.yml 
cd ..
ansible-playbook site.yml 
ls
cd ..
ls
ansible-galaxy init win_domain_user
ls
cd win_domain_user/
ls
vi /root/ansible-tower-setup-*/inventory
/root/ansible-tower-setup-*/setup.sh
journalctl -xe
sudo vi /root/ansible-tower-setup-*/inventory
/root/ansible-tower-setup-*/setup.sh
sudo vi /root/ansible-tower-setup-*/inventory
echo $GUID
GUID=fb4d
ssh tower1.fb4d.internal 
 cat << EOF > /root/ansible-tower-setup-*/inventory
[tower]
tower1.${GUID}.internal
tower2.${GUID}.internal
tower3.${GUID}.internal
[database]
support1.${GUID}.internal
[all:vars]
ansible_become=true
admin_password='r3dh4t1!'

pg_host='support1.${GUID}.internal'
pg_port='5432'

pg_database='awx'
pg_username='awx'
pg_password='r3dh4t1!'

rabbitmq_port=5672
rabbitmq_vhost=tower

rabbitmq_username=tower
rabbitmq_password='r3dh4t1!'
rabbitmq_cookie=cookiemonster

rabbitmq_use_long_name=true
EOF

cat /root/ansible-tower-setup-3.2.3/inventory 
ls
cd ansible-tower-setup-3.2.3/
./setup.sh 
ansible all --list-hosts
ansible 'all: !windows' -m ping -v
ansible --version
ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
sudo ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
export GUID="fb4d"
echo=$GUID
echo $GUID
export MYKEY=~.ssh/openstack.pem
export MYUSER=pallavi_sr-hcl.com

sudo ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
ansible all --list-host
scp ctrl-${GUID}.rhpds.opentlc.com:/etc/yum.repos.d/open.repo /etc/yum.repos.d/open.repo
ansible all --list-host
sudo ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pub
cat openstack.pub  >> /home/cloud-user/.ssh/authorized_keys
cat openstack.pub  >> /home/pallavi_sr-hcl.com/.ssh/authorized_keys
ls
cat openstack.pub 
sudo ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
wget http://www.opentlc.com/download/ansible_bootcamp/openstack_keys/openstack.pem -O ~/.ssh/openstack.pem
chmod 400 ~/.ssh/openstack.pem
sudo ssh -i /root/.ssh/openstack.pem pallavi_sr-hcl.com@bastion.fb4d.example.opentlc.com
export GUID=`hostname | awk -F"." '{print $2}'`
ansible support1.${GUID}.internal -m lineinfile -a "line='include_dir = 'conf.d'' path=/var/lib/pgsql/9.6/data/postgresql.conf"
ansible support1.${GUID}.internal -m file -a 'path=/var/lib/pgsql/9.6/data/conf.d state=directory'
sudo vi tower-postgresql.conf
ansible support1.${GUID}.internal -m copy -a "src=/root/tower-postgresql.conf dest=/var/lib/pgsql/9.6/data/conf.d/tower-postgresql.conf"
ansible support1.${GUID}.internal  -m lineinfile -a "line='host    replication replica     0.0.0.0/0        md5' path=/var/lib/pgsql/9.6/data/pg_hba.conf"
ansible support1.${GUID}.internal -m service -a"name=postgresql-9.6 state=restarted"
ansible support1.${GUID}.internal -m postgresql_user -a "name=replica password=r3dh4t1! role_attr_flags=REPLICATION state=present" --become-user=postgres
