#! /bin/sh

# A useful script to download the latest version of bootstrap and jquery

rm -rf node_modules package-lock.json
npm install bootstrap@5 bootstrap-icons jquery@3 @popperjs/core

rm -rf _sass/bootstrap
mkdir -p _sass/bootstrap
cp -r node_modules/bootstrap/scss/* _sass/bootstrap
touch _sass/bootstrap/__DO_NOT_MODIFY

rm -rf assets/javascript/bootstrap
mkdir -p assets/javascript/bootstrap
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.* assets/javascript/bootstrap/
cp node_modules/jquery/dist/jquery.min.* assets/javascript/bootstrap/
touch assets/javascript/bootstrap/__DO_NOT_MODIFY

# popper stuff
rm -rf assets/javascript/popper
mkdir -p assets/javascript/popper
cp -r node_modules/@popperjs/core/* assets/javascript/popper/
touch assets/javascript/popper/__DO_NOT_MODIFY

rm -rf node_modules package-lock.json
