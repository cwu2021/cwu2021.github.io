# lab multicontainer-design start
# podman login registry.redhat.io
ip -br addr list | grep eth0
cd ~/DO180/labs/multicontainer-design/deploy/nodejs
./build.sh
podman images \
--format "table {{.ID}} {{.Repository}} {{.Tag}}"
#cat >> run.sh << EOF
#EOF
cd \
/home/student/DO180/labs/multicontainer-design/deploy/nodejs/networked
./run.sh
podman ps \
--format="table {{.ID}} {{.Names}} {{.Image}} {{.Status}}"
mysql -uuser1 -h 172.25.250.9 \
-pmypa55 -P30306 items < \
/home/student/DO180/labs/multicontainer-design/deploy/nodejs/networked/db.sql
podman exec -it todoapi env
curl -w "\n" \
http://127.0.0.1:30080/todo/api/items/1
cd ~
# lab multicontainer-design finish
