suttacentral-discourse-onebox
=============================

Install in Discourse 1.0

    cd /var/discourse
    ./launcher enter app
    cd /var/www/discourse
    rake plugin:install repo='https://github.com/suttacentral/suttacentral-discourse-onebox.git'
    exit
    ./launcher restart app
    ./launcher enter app
    cd /var/www/discourse
    rake posts:refresh_oneboxes
