# lab openshift-webconsole start
cd ~/DO180-apps
git checkout master
git checkout -b console
git push -u origin console
source /usr/local/etc/ocp4.config
echo $RHT_OCP4_WILDCARD_DOMAIN
