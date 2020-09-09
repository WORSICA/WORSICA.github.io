#!/bin/bash
WORSICADOC_WORKDIR="/usr/local/WORSICA.github.io"
echo "1- Build the documentation from development branch"
git checkout development
sphinx-multiversion -c ${WORSICADOC_WORKDIR}/source ${WORSICADOC_WORKDIR}/source ${WORSICADOC_WORKDIR}/html
cp ${WORSICADOC_WORKDIR}/.git_credential_helper.sh ${WORSICADOC_WORKDIR}/html/
echo "2- Change to gh-pages and copy outputs to the root folder"
git checkout gh-pages
cp -r ${WORSICADOC_WORKDIR}/html/* ${WORSICADOC_WORKDIR}/
cp ${WORSICADOC_WORKDIR}/html/.git_credential_helper.sh ${WORSICADOC_WORKDIR}/
chmod a+x ${WORSICADOC_WORKDIR}/.git_credential_helper.sh
rm -rf ${WORSICADOC_WORKDIR}/html
echo "3- Commit changes to gh-pages"
git -C ${WORSICADOC_WORKDIR} add -A
git -C ${WORSICADOC_WORKDIR} reset -- .git_credential_helper.sh
git config --global user.email 'rjmartins@lnec.pt'
git commit -m 'Added HTML docs'
env GIT_ASKPASS=${WORSICADOC_WORKDIR}/.git_credential_helper.sh git -C ${WORSICADOC_WORKDIR} push -u origin gh-pages
echo "Success!"
