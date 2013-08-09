Jetty http-server and Java Servlet container

Create rpm package using tito:

git clone https://github.com/andybondar/openshift-origin-cartridge-jetty-8.1.git

cd openshift-origin-cartridge-jetty-8.1
tito init
tito tag
tito build --rpm --test -o OUTPUTDIR


And install it:

yum install ...

Clear brocker cache:

echo "Rails.cache.clear" | /var/www/openshift/broker/script/rails console development &&  cd /var/www/openshift/broker && bundle exec rake tmp:clear

And create Application:

rhc app create -a jetty -t jetty-8.1

Now you can check you jetty at:

http://jetty-$yourspacename.$yourcloud.domain

