# lab openshift-routes start
source /usr/local/etc/ocp4.config
oc login -u zwjypf -p \
 2ee12010c5f44fa1ab4b https://api.ap46.prod.nextcle.com:6443
oc new-project zwjypf-route
oc new-app \
 --docker-image=quay.io/redhattraining/php-hello-dockerfile \
 --name php-helloworld
oc get pods -w
oc logs -f php-helloworld-74bb86f6cb-zt6wl
oc describe svc/php-helloworld
oc expose svc/php-helloworld
oc describe route
# curl \
#  php-helloworld-${RHT_OCP4_DEV_USER}-route.${RHT_OCP4_WILDCARD_DOMAIN}
# oc delete route/php-helloworld
# oc expose svc/php-helloworld \
#  --name=${RHT_OCP4_DEV_USER}-xyz
# curl \
#  ${RHT_OCP4_DEV_USER}-xyz-${RHT_OCP4_DEV_USER}-route.${RHT_OCP4_WILDCARD_DOMAIN}
# lab openshift-routes finish
