#!/bin/bash
cmd=$(basename $0)
curdir=$(dirname $0)
curdir=$(cd ${curdir}; pwd)
build=$1
###############################################################################
# Copyright (c) 2025 Oracle and/or its affiliates.
#
# This script is not supported.
# 
# The purpose of this script is to download the latest set of ojdbc-extensions
# libraries and dependencies from Maven repository.
#
# This script is open source and distributed under Universal Permissive
# License v1.0 as shown at https://oss.oracle.com/licenses/upl/.
# 
###############################################################################
steps=0
cd "${curdir}"
mkdir -p tmp/ojdbc-extensions lib/ojdbc-extensions 2> /dev/null

if [ -z "${build}" ]
then
   let steps++
   echo "Step: ${steps} Lookup current ojdbc-extension build version"
   build=$(curl -sL https://github.com/oracle/ojdbc-extensions/releases/|grep "/oracle/ojdbc-extensions/releases/tag/v"|sed -e "s/^.*tag\/v//g" -e "s/\".*//g"|sort -ur|head -1)
fi
if [ -z "${build}" ];then build="1.0.5";fi

let steps++
echo "Step: ${steps} Download dependencies"

for jar in asm/asm com/fasterxml/jackson/core/jackson-annotations com/fasterxml/jackson/core/jackson-core com/fasterxml/jackson/core/jackson-databind com/fasterxml/jackson/datatype/jackson-datatype-jsr310 com/fasterxml/jackson/module/jackson-module-jaxb-annotations com/microsoft/azure/azure-core com/azure/azure-core-http-netty com/azure/azure-data-appconfiguration com/azure/azure-identity com/azure/azure-json com/azure/azure-security-keyvault-secrets com/azure/azure-xml com/microsoft/azure/msal4j com/microsoft/azure/msal4j-persistence-extension com/nimbusds/content-type com/nimbusds/lang-tag com/nimbusds/nimbus-jose-jwt com/nimbusds/oauth2-oidc-sdk io/netty/netty-buffer io/netty/netty-codec io/netty/netty-codec-dns io/netty/netty-codec-http io/netty/netty-codec-http2 io/netty/netty-codec-socks io/netty/netty-common io/netty/netty-handler io/netty/netty-handler-proxy io/netty/netty-resolver io/netty/netty-resolver-dns io/netty/netty-resolver-dns-classes-macos io/netty/netty-resolver-dns-native-macos io/netty/netty-tcnative-boringssl-static io/netty/netty-tcnative-classes io/netty/netty-transport io/netty/netty-transport-classes-epoll io/netty/netty-transport-classes-kqueue io/netty/netty-transport-native-epoll io/netty/netty-transport-native-kqueue io/netty/netty-transport-native-unix-common io/projectreactor/reactor-core io/projectreactor/netty/reactor-netty-core io/projectreactor/netty/reactor-netty-http net/java/dev/jna/jna net/java/dev/jna/jna-platform net/jcip/jcip-annotations net/minidev/accessors-smart net/minidev/json-smart org/reactivestreams/reactive-streams org/slf4j/slf4j-api
do
   # Determine latest version
   ver=$(curl -sl https://repo1.maven.org/maven2/${jar}/|sed -e "s/^.*\">//g" -e "s/\/<\/a.*//g"|egrep "^[0-9]|^v[0-9]"|sort -nr|egrep -v "empty-to-avoid"|head -1)
   jarFile="${jar}-${ver}.jar"
   jarLib=$(basename ${jarFile})

   if [ -z "${ver}" ]
   then
      echo "   ERROR: No version of ${jar} is available. Here is list of options:"
      curl -Ls https://repo1.maven.org/maven2/${jar}/|sed -e "s/^.*\">//g" -e "s/\/<\/a.*//g"|egrep "^[0-9]|^v[0-9]"|sort -nr
   else
      # Download curent version
      curl -sLo lib/ojdbc-extensions/${jarLib} https://repo1.maven.org/maven2/${jar}/${ver}/${jarLib}
      rc=$?
   fi
done

let steps++
readarray -t assets < <(curl -sL https://github.com/oracle/ojdbc-extensions/releases/expanded_assets/v${build}|grep -i "\.jar\""|sed -e "s/^.*href=\"//g" -e "s/\" rel.*//g")

echo "Step: ${steps} Download ojdbc-extensions"

for (( x=0; x< ${#assets[*]}; x++ )) 
do
   asset=${assets[${x}]}
   jarLib=$(basename ${assets[${x}]})
   curl -sLo lib/ojdbc-extensions/${jarLib} https://github.com/oracle/ojdbc-extensions/releases/expanded_assets/v${build}/${jarLib}
done

let steps++
echo "Step: ${steps} Make product.conf for SQLDeveloper"
cd ${curdir}/lib/ojdbc-extensions
rm -f product.conf 2> /dev/null
for jar in *.jar
do
   echo "AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-${build}\\${jar}" >> product.conf
done

let steps++
echo "Step: ${steps} Bundle up the ojdbc-extensions: ojdbc-extensions-${build}.zip"
cd ${curdir}/lib/ojdbc-extensions
zip -qo ${curdir}/ojdbc-extensions-${build}.zip *.jar product.conf
cd ${curdir}


let steps++
echo "Step: ${steps} Clean up"
rm -fr lib/ojdbc-extensions
