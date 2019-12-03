# sayo blog

## visit blog

http: [https://sayo-melu.xyz](https://sayo-melu.xyz)

dat: [dat://sayo-melu.xyz](dat://sayo-melu.xyz)

## build locally

```sh
# install bundler
sudo gem update
sudo gem install bundler

# install (in folder)
bundle install

# build stylus (optional)
stylus -w ./asset/style/style.styl -o ./asset/style/style.css

# test locally
bundle exec jekyll serve

# build locally
bundle exec jekyll build

# build dat
asset/config/dat/build-dat.sh
```

## todo

- fix color with https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/color/
- fix heading font size

[sayo theme](https://gitlab.com/sayo-melu/sayo-melu.xyz) edited from [jekyll now](https://github.com/barryclark/jekyll-now).
