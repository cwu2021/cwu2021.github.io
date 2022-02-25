# lab openshift-s2i start
cd ~/DO180-apps
git checkout master
git checkout -b s2i
git push -u origin s2i
source /usr/local/etc/ocp4.config
oc login -u ${RHT_OCP4_DEV_USER} -p \> ${RHT_OCP4_DEV_PASSWORD} ${RHT_OCP4_MASTER_API}
oc new-project ${RHT_OCP4_DEV_USER}-s2i
oc new-app php:7.3 --name=php-helloworld \
https://github.com/${RHT_OCP4_GITHUB_USER}/DO180-apps#s2i \
--context-dir php-helloworld
oc get pods
oc logs --all-containers \
-f php-helloworld-1-build
oc describe deployment/php-helloworld
oc expose service php-helloworld \
--name ${RHT_OCP4_DEV_USER}-helloworld
oc get route -o jsonpath='{..spec.host}{"\n"}'
curl -s \
${RHT_OCP4_DEV_USER}-helloworld-${RHT_OCP4_DEV_USER}-s2i.\
${RHT_OCP4_WILDCARD_DOMAIN}
cd ~/DO180-apps/php-helloworld
cat > index.php << EOF
<?php
print "Hello, World! php version is " . PHP_VERSION . "\n";
print "A change is a coming!\n";
?>
EOF
git add .
git commit -m 'Changed index page contents.'
git push origin s2i
oc start-build php-helloworld
oc logs php-helloworld-2-build -f
oc get pods
curl -s \
${RHT_OCP4_DEV_USER}-helloworld-${RHT_OCP4_DEV_USER}-s2i.\
${RHT_OCP4_WILDCARD_DOMAIN}
# lab openshift-s2i finish
