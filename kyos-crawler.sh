if [ -f kyos-crawler-running.txt ]; then
    exit
fi
echo 'Running' > kyos-crawler-running.txt
casperjs --cookies-file=cookies.txt kyos-crawler.js http://win.kyos.com/develop/
rm kyos-crawler-running.txt