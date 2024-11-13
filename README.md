Контрольная работа по SLURM Мониторинг. 

mkdir /monitoring && cd /monitoring
git clone https://github.com/paveldtsn/monitoring.git
cd monitor
sudo apt-get install -y tar ansible-core xz-utils apt-transport-https
sudo apt-get update
sudo apt-get upgrade

ansible-playbook -i /monitoring/inventory/inventory.ini /monitoring/playbook.yml --become

Login:
Prometheus: http://45.77.55.124:9090
Kibana: http://45.77.55.124:9200

