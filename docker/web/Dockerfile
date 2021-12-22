FROM nginx:1.21.4

# Update bash profile
COPY ./docker/.profile /root/.profile
COPY ./docker/.profile /root/.bashrc

# Add sites
COPY ./docker/web/conf.d /etc/nginx/conf.d
