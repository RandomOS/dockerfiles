## randomos/rocky-tengine

#### What is this?
It is a custom tengine image.

#### Compile options
```bash
# tengine 2.3.2
./configure \
    --with-cpu-opt=generic \
    --with-cc-opt='-O2 -fstack-protector' \
    --with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro' \
    --prefix=/usr/local \
    --conf-path=/etc/nginx/nginx.conf \
    --modules-path=/etc/nginx/modules \
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
    --with-stream_sni \
    --with-jemalloc=/run/shm/build/jemalloc-5.2.1 \
    --with-openssl=/run/shm/build/openssl-1.1.1d \
    --with-pcre=/run/shm/build/pcre-8.43 \
    --with-zlib=/run/shm/build/zlib-1.2.11 \
    --add-module=./modules/ngx_http_concat_module \
    --add-module=./modules/ngx_http_footer_filter_module \
    --add-module=./modules/ngx_http_proxy_connect_module \
    --add-module=./modules/ngx_http_reqstat_module \
    --add-module=./modules/ngx_http_slice_module \
    --add-module=./modules/ngx_http_trim_filter_module \
    --add-module=./modules/ngx_http_upstream_check_module \
    --add-module=./modules/ngx_http_upstream_consistent_hash_module \
    --add-module=./modules/ngx_http_upstream_dynamic_module \
    --add-module=./modules/ngx_http_upstream_dyups_module \
    --add-module=./modules/ngx_http_upstream_session_sticky_module \
    --add-module=./modules/ngx_http_upstream_vnswrr_module \
    --add-module=./modules/ngx_http_user_agent_module \
    --add-module=./modules/ngx_multi_upstream_module \
    --add-module=./modules/ngx_slab_stat \
    --add-module=/run/shm/build/ngx_brotli \
    --add-module=/run/shm/build/ngx-fancyindex-0.4.3 \
    --add-module=/run/shm/build/nginx-module-vts-0.1.18 \
    --add-module=/run/shm/build/nginx-module-sts-0.1.1 \
    --add-module=/run/shm/build/nchan-1.2.6 \
    --add-module=/run/shm/build/headers-more-nginx-module-0.33
```
