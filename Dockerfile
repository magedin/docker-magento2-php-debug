FROM magedin/magento2-php:7.3.33.4
# BASE CONFIGURATION ---------------------------------------------------------------------------------------------------

## Enable XDebug by default
RUN sed -i -e 's/^;zend_extension/\zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN sed -i -e 's/^xdebug.start_with_request.*/xdebug.start_with_request = yes/g' /usr/local/etc/php/conf.d/zzz-xdebug.ini
