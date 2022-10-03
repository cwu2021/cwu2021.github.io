#!/bin/bash
# https://aws.amazon.com/tw/premiumsupport/knowledge-center/s3-configure-cors/
# https://shubo.io/what-is-cors/?q=cache:AGF6RdDlW1sJ:https://shubo.io/what-is-cors/&cd=2&hl=zh-TW&ct=clnk&gl=tw#%E7%B8%BD%E7%B5%90
# https://docs.aws.amazon.com/AmazonS3/latest/userguide/enabling-cors-examples.html
# https://docs.aws.amazon.com/AmazonS3/latest/userguide/ManageCorsUsing.html#cors-example-1
# https://docs.viblast.com/player/cors/cors-on-nginx
cat >> /etc/nginx/conf.d/default.conf << EOF
#
# Wide-open CORS config for nginx
#

location / {
    if ($request_method = OPTIONS) {
        return 204;
    }

    add_header Access-Control-Allow-Origin *;
    add_header Access-Control-Max-Age 3600;
    add_header Access-Control-Expose-Headers Content-Length;
    add_header Access-Control-Allow-Headers Range;
}
EOF
service nginx reload
# https://blog.gtwang.org/web-development/chrome-configuration-for-access-control-allow-origin/
