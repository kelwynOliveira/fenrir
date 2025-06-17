FROM pihole/pihole:latest

RUN rm -rf /var/www/html/admin && mkdir -p /var/www/html/admin
RUN git clone https://github.com/kelwynOliveira/fenrir.git /var/www/html/admin
# COPY fenrir/ /var/www/html/admin