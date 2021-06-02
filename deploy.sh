#! /bin/bash
rm -r /var/www/tunabakonzi.org/alaveteli/lib/themes/tunabakonzi-alavetelitheme
rm -r /var/www/tunabakonzi.org/alaveteli/cache
service alaveteli stop
sudo -u alaveteli RAILS_ENV=production \
  /var/www/tunabakonzi.org/alaveteli/script/rails-post-deploy
service alaveteli start
  