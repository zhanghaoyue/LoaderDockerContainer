#!/bin/bash
execstack -c /root/OpenCV/opencv-3.0.0/build/lib/libopencv_java300.so &
service redis-server start

# Run Image Loader
forever start /root/dataloader/bin/www

# Run Annotations Loader
forever start /root/annotationloader/bin/www 
# Run KUE Dashboard
forever start  /root/annotationloader/node_modules/kue/bin/kue-dashboard 
while true; do sleep 1000; done

