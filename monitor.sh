while [ 1 ]; do 
  time ./bin/zxtm \
    | tee index.txt | tee -a all.log
    chmod 644 index.* *.html
    scp index.* *.html people.mozilla.org:public_html/zxtm/
    rsync --delete -avz rrd/ people.mozilla.org:public_html/zxtm/rrd/
    date
    sleep 300
done
