HERE IS WHERE YOU SHOULD BE ABLE TO SEE AN R SCRIPT TYLER IS USING ON HIS COMPUTER...

library(ngRok)

port = 8080
id <- ngRok::livestream_start(port = port,hostname = "www.rdaviscode.com",
                              password = 'nifflers',user = 'rdavis',scheme = 'http')


livestream_stop(id = id)
livecode::serve_file(port = port,open_browser = F)
?serve_file
