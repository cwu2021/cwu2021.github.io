# lab multicontainer-review start
cd ~/DO180/labs/multicontainer-review
oc login -u ${RHT_OCP4_DEV_USER} \
-p ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project \
${RHT_OCP4_DEV_USER}-deploy
podman login registry.redhat.io
cd images/mysql
podman build -t do180-mysql-80-rhel8 .
podman login quay.io -u ${RHT_OCP4_QUAY_USER}
podman tag do180-mysql-80-rhel8 \
quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-80-rhel8
podman push \
quay.io/${RHT_OCP4_QUAY_USER}/do180-mysql-80-rhel8
cd ~/DO180/labs/multicontainer-review
cd images/quote-php
podman build -t do180-quote-php .
podman tag do180-quote-php \
quay.io/${RHT_OCP4_QUAY_USER}/do180-quote-php
podman push \
quay.io/${RHT_OCP4_QUAY_USER}/do180-quote-php
cd ~/DO180/labs/multicontainer-review
oc create -f quote-php-template.json
oc process quote-php-persistent \
-p RHT_OCP4_QUAY_USER=${RHT_OCP4_QUAY_USER} \
| oc create -f -
oc get pods -w
oc expose svc quote-php
oc get route
cd ~
curl -w "\n" \
http://quote-php-${RHT_OCP4_DEV_USER}-deploy.${RHT_OCP4_WILDCARD_DOMAIN}
