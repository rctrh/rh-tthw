#!/bin/sh
#

perl -pe 's/[Pp]ython 3/%LANGUAGE%/g;s/python-33-rhel7/%container%/g;s/Python/%LANGUAGE%/g;s/python3?/%language%/g;' get-started-dcr7-python.adoc  > /tmp/get-started-dcr7-python.adoc
perl -pe 's/PHP/%LANGUAGE%/g;s/php-55-rhel7/%container%/g;s/php/%language%/g;' get-started-dcr7-php.adoc  > /tmp/get-started-dcr7-php.adoc
perl -pe 's/Node.[jJ][sS]/%LANGUAGE%/g;s/nodejs-010-rhel7/%container%/g;s/node.js/%language%/g;s/node/%language%/g;' get-started-dcr7-nodejs.adoc  > /tmp/get-started-dcr7-nodejs.adoc
perl -pe 's/Ruby/%LANGUAGE%/g;s/ruby-20-rhel7/%container%/g;s/ruby/%language%/g;' get-started-dcr7-ruby.adoc  > /tmp/get-started-dcr7-ruby.adoc


