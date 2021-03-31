## randomos/rocky-nginx

#### What is this?
It is a custom nginx image.

#### Compile options
```bash
# nginx 1.19.4
./configure \
    --with-cpu-opt=generic \
    --with-cc-opt='-O2 -fstack-protector' \
    --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro -no-pie -static' \
    --prefix=/usr/local \
    --conf-path=/etc/nginx/nginx.conf \
    --modules-path=/usr/lib/nginx/modules \
    --http-log-path=/var/log/nginx/access.log \
    --error-log-path=/var/log/nginx/error.log \
    --lock-path=/var/lock/nginx.lock \
    --pid-path=/var/run/nginx.pid \
    --http-client-body-temp-path=/var/lib/nginx/body \
    --http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
    --http-proxy-temp-path=/var/lib/nginx/proxy \
    --http-scgi-temp-path=/var/lib/nginx/scgi \
    --http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
    --with-compat \
    --with-threads \
    --with-file-aio \
    --with-pcre-jit \
    --with-select_module \
    --with-poll_module \
    --with-http_ssl_module \
    --with-http_v2_module \
    --with-http_realip_module \
    --with-http_addition_module \
    --with-http_sub_module \
    --with-http_dav_module \
    --with-http_flv_module \
    --with-http_mp4_module \
    --with-http_gunzip_module \
    --with-http_gzip_static_module \
    --with-http_auth_request_module \
    --with-http_random_index_module \
    --with-http_secure_link_module \
    --with-http_degradation_module \
    --with-http_slice_module \
    --with-http_stub_status_module \
    --with-mail \
    --with-mail_ssl_module \
    --with-stream \
    --with-stream_ssl_module \
    --with-stream_realip_module \
    --with-stream_ssl_preread_module \
    --with-openssl=/tmp/build/openssl-1.1.1k \
    --with-pcre=/tmp/build/pcre-8.44 \
    --with-zlib=/tmp/build/zlib-1.2.11 \
    --add-module=/tmp/build/ngx_brotli \
    --add-module=/tmp/build/ngx-fancyindex-0.4.4 \
    --add-module=/tmp/build/nginx-module-vts-0.1.18 \
    --add-module=/tmp/build/nginx-module-sts-0.1.1 \
    --add-module=/tmp/build/nginx-module-stream-sts-0.1.1 \
    --add-module=/tmp/build/headers-more-nginx-module-0.33
```
