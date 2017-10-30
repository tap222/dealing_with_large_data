mkdir page_views_splits
unzip -p page_views.csv.zip | split --line-bytes=300m --filter='gzip --fast > ./page_views_splits/$FILE.gz'
