ps aux | grep grails | grep java | awk '{ print $2 }' | xargs kill -9

