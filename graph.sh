while [ 1 ]; do 
  bin/zxtm-graph
  rsync --delete -av graphs/ people.mozilla.org:public_html/zxtm/graphs/
  
  sleep 300
  
done
