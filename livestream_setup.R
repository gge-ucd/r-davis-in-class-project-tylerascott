
#https://bitsandbricks.github.io/post/code-live-from-rstudio-and-share-it-with-the-world-in-real-time/
#troubleshooting install: https://stackoverflow.com/questions/65251887/clang-7-error-linker-command-failed-with-exit-code-1-for-macos-big-sur/65334247#65334247

#start livecode local server (available only on LAN)
s <- livecode::serve_file(port = 8080)
paste('ngrok http' ,s$url)
#paste this output into terminal


http://168.150.117.162:8080  



paste('ngrok http -hostname=www.rdaviscode.com', s$url)
#ngrok.io address is global access url
#this should be tyler's live code demo
#if you are mac user, youll perhaps need the two links above to get it working for you

livecode::stop_all()
ngrok http --region=us --hostname=www.rdaviscode.com 8080


ngrok http -hostname=rdaviscode.com 4040


paste('ngrok http' ,s$url)


Stopped server at 'http://192.168.86.28:42232'.
http://192.168.86.28:46434/
  
2+2

