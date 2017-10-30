# dealing_with_large_data

Splitting

As it is impossible to read zip file with R line by line (at least I don’t know solution) we will split file into
many “mini-batches” in a way that each such batch can be efficiently read from disk into RAM. Moreover this will allow 
to process chunks in parallel. As mentioned in first part your best friend are data.table and UNIX CLI. We will use split 
utility to split file. Moreover we will gzip each chunk, so they won’t occupy 100gb on disk.



In a pipe we: 1. uncompress zip stream 1. with argument --line-bytes=300m we create batches of 300 mb 
(command doesn’t break lines!) 1. compress to gzip file (fast comression, minimal compression rate) 1. save it to 
page_views_splits directory which we created at first line

This will take ~ 20-30 minutes
