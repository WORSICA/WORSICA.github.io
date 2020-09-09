#!/bin/bash
WORSICADOC_WORKDIR="/usr/local/WORSICA.github.io"

sphinx-multiversion -c ${WORSICADOC_WORKDIR}/source ${WORSICADOC_WORKDIR}/source ${WORSICADOC_WORKDIR}/html
cp ${WORSICADOC_WORKDIR}/.git_credential_helper.sh ${WORSICADOC_WORKDIR}/html/
git checkout gh-pages
cp -r ${WORSICADOC_WORKDIR}/html/* ${WORSICADOC_WORKDIR}/
rm -rf ${WORSICADOC_WORKDIR}/html
echo ".git_credential_helper.sh" > ${WORSICADOC_WORKDIR}/.gitignore
git -C ${WORSICADOC_WORKDIR} add -A
git -C ${WORSICADOC_WORKDIR} reset -- .git_credential_helper.sh
git config --global user.email 'rjmartins@lnec.pt'
git commit -m 'Added HTML docs'
env GIT_ASKPASS=${WORSICADOC_WORKDIR}/.git_credential_helper.sh git -C ${WORSICADOC_WORKDIR} push -u origin gh-pages
