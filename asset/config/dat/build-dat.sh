# this script generate a dat website with _config-dat.yml

mv _config.yml _config-http.yml
cp asset/config/dat/_config-dat.yml _config.yml

bundle exec jekyll build
mv -f _site _site-dat

cp asset/config/dat/dat.json _site-dat/
cp asset/config/dat/.datignore _site-dat/

mv -f _config-http.yml _config.yml
