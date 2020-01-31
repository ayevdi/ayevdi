# Contributing to AyeVDI

1. Fork the repository. In case you are doing this as a project under a 
lesson, you will need to fork from the repository maintained by the GTM partner.

2. Try out the suggested getting started method

3. Make changes and commit to your development branch in your fork

4. Once satisfied - test, retest and test again (do not submit and changes without testing them yourself first

5. Create pull request
Note: Merging code into the main repository depends on many factors (too detailed to outline here) and the maintainers / admins
reserve the right to reject any pull request without assigning any reason.

6. Ensure inclusion of statutory header
```
# AYESEC:POST_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe
# AYESEC:STATUTORY_HEADER
if [ "${ayevdi_sourcefrom}" != "${HOME}/.ayevdi/ayevdi-sourcefrom" ]
then
  echo "AyeVDI by https://ayeai.xyz"
  echo "Copyright (C) 2019-2020 Abhishek Choudhary, Dr Srija Katta"
  echo ""
  echo "NO WARRANTY, and ZERO LIABILITY (Limited to INR 1/- only)"
  echo "Further usage of these software, artifacts or methods"
  echo "are subject to the 'latest' license agreement avaialble at"
  echo "https://raw.githubusercontent.com/ayeai/spl/master/LICENSE"
  echo ""
  echo "AyeVDI not activated. Please use the following command to"
  echo "activate AyeVDI"
  echo '  ayesh=$(tempfile) && wget https://bit.ly/ayevdi-sfrom-init -O${ayesh} -q && . ${ayesh}'
  echo ""
  exit
fi
# AYESEC:STATUTORY_HEADER_COMPLETED
# AYESEC:PREV_SHS('18 lines')=9da1fc9afc1b85e1e81e78a53f97d4436d886182eec170ddd6c78ec71e64113d9ade4fd1bf969ed5bbe62baed9a575d2b5e3ccdc0383c27eb7a4b6bc71965afe
```

TODO: To be expanded into a detailed guide
