# lab openshift-review start
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p \
${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-ocp
oc new-app \
php:7.3~https://github.com/RedHatTraining/DO180-apps \
--context-dir temps --name temps
oc logs -f bc/temps
oc get pods -w
oc expose svc/temps
oc get route/temps
# lab openshift-review grade
# lab openshift-review finish
