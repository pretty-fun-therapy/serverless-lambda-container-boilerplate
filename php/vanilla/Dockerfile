FROM bref/php-80-fpm
# Copy our code in the container
COPY . /var/task
RUN ls
# Start Bref's runtime client
CMD _HANDLER=index.php /opt/bootstrap
