#unzip apple data

path<-'C:\\Users\\tkrebsb\\Desktop\\Grad School\\ST558\\Project 1\\Project-1-Part-1'

zip <- paste(path, 'export.zip', sep = '/')
unzip(zip, exdir = path)
Sys.sleep(3) 