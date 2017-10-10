#!/bin/bash
# A simple script to reload translations from github

cd /tmp
git clone https://github.com/whitefox322/discourse-ukrainian.git
cp -rT discourse-ukrainian/ /var/www/discourse/
cp -f discourse-ukrainian/reload_i18n.sh /root/reload_i18n.sh
chmod +x /root/reload_i18n.sh
rm -rf discourse-ukrainian
cd /var/www/discourse
sudo -u discourse RAILS_ENV=production bundle exec rake assets:clobber assets:precompile