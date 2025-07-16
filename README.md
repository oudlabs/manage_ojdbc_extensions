# OJDBC Extensions Manager

*Build zip file of requisite ojdbc-extensions for Entra ID integration of JDBC-thin applications.*

## Installation

*Download the script and run according to the following usage*

## Documentation

** Usage: manage_ojdbc_extensions.sh <ojdbc_extensions_versions>**

## Examples
*Sample Usage to build ojdbc-extensions version 1.0.5*
./manage_ojdbc_extensions.sh 1.0.5
Step: 1 Download dependencies
Step: 2 Download ojdbc-extensions
Step: 3 Make product.conf for SQLDeveloper
Step: 4 Bundle up the ojdbc-extensions: ojdbc-extensions-1.0.5.zip
Step: 5 Clean up
$ unzip -l ojdbc-extensions-1.0.5.zip
Archive:  ojdbc-extensions-1.0.5.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
    30358  07-16-2025 22:42   accessors-smart-2.5.2.jar
    30590  07-16-2025 22:42   asm-20041228.180559.jar
   167532  07-16-2025 22:42   azure-core-0.9.8.jar
    46950  07-16-2025 22:42   azure-core-http-netty-1.9.2.jar
   171460  07-16-2025 22:42   azure-data-appconfiguration-1.8.1.jar
   251890  07-16-2025 22:42   azure-identity-1.9.2.jar
   326046  07-16-2025 22:42   azure-json-1.5.0.jar
    97904  07-16-2025 22:42   azure-security-keyvault-secrets-4.9.4.jar
   240793  07-16-2025 22:42   azure-xml-1.2.0.jar
     8877  07-16-2025 22:42   content-type-2.3.jar
    80543  07-16-2025 22:42   jackson-annotations-3.0-rc5.jar
   325632  07-16-2025 22:42   jackson-core-2.9.9.jar
  1348389  07-16-2025 22:42   jackson-databind-2.9.9.3.jar
   100674  07-16-2025 22:42   jackson-datatype-jsr310-2.9.9.jar
    32627  07-16-2025 22:42   jackson-module-jaxb-annotations-2.9.9.jar
     2254  07-16-2025 22:42   jcip-annotations-1.0.jar
  1729586  07-16-2025 22:42   jna-5.9.0.jar
  1343236  07-16-2025 22:42   jna-platform-5.9.0.jar
   122358  07-16-2025 22:42   json-smart-2.5.2.jar
    11170  07-16-2025 22:42   lang-tag-1.7.jar
   287265  07-16-2025 22:42   msal4j-1.9.1.jar
    27005  07-16-2025 22:42   msal4j-persistence-extension-1.3.0.jar
   175812  07-16-2025 22:42   netty-buffer-5.0.0.Alpha2.jar
   329017  07-16-2025 22:42   netty-codec-5.0.0.Alpha2.jar
    27239  07-16-2025 22:42   netty-codec-dns-5.0.0.Alpha2.jar
   200551  07-16-2025 22:42   netty-codec-http2-5.0.0.Alpha2.jar
   488870  07-16-2025 22:42   netty-codec-http-5.0.0.Alpha2.jar
    75477  07-16-2025 22:42   netty-codec-socks-5.0.0.Alpha2.jar
   441190  07-16-2025 22:42   netty-common-5.0.0.Alpha2.jar
   239979  07-16-2025 22:42   netty-handler-5.0.0.Alpha2.jar
    20607  07-16-2025 22:42   netty-handler-proxy-5.0.0.Alpha2.jar
    11745  07-16-2025 22:42   netty-resolver-5.0.0.Alpha2.jar
    43471  07-16-2025 22:42   netty-resolver-dns-5.0.0.Alpha2.jar
     9840  07-16-2025 22:42   netty-resolver-dns-classes-macos-4.2.3.Final.jar
     5990  07-16-2025 22:42   netty-resolver-dns-native-macos-4.2.3.Final.jar
    22010  07-16-2025 22:42   netty-tcnative-boringssl-static-2.0.9.Final.jar
    36667  07-16-2025 22:42   netty-tcnative-classes-2.0.72.Final.jar
   353476  07-16-2025 22:42   netty-transport-5.0.0.Alpha2.jar
   155307  07-16-2025 22:42   netty-transport-classes-epoll-4.2.3.Final.jar
   116705  07-16-2025 22:42   netty-transport-classes-kqueue-4.2.3.Final.jar
    96617  07-16-2025 22:42   netty-transport-native-epoll-5.0.0.Alpha2.jar
     6857  07-16-2025 22:42   netty-transport-native-kqueue-4.2.3.Final.jar
    46512  07-16-2025 22:42   netty-transport-native-unix-common-4.2.3.Final.jar
   805822  07-16-2025 22:42   nimbus-jose-jwt-10.3.1.jar
   883761  07-16-2025 22:42   oauth2-oidc-sdk-11.9.1.jar
    62165  07-16-2025 22:42   ojdbc-provider-aws-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-aws-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-aws-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-azure-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-azure-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-azure-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-common-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-common-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-common-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-gcp-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-gcp-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-gcp-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-hashicorp-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-hashicorp-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-hashicorp-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-jackson-oson-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-jackson-oson-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-jackson-oson-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-oci-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-oci-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-oci-1.0.5-sources.jar
    62165  07-16-2025 22:42   ojdbc-provider-opentelemetry-1.0.5.jar
    62165  07-16-2025 22:42   ojdbc-provider-opentelemetry-1.0.5-javadoc.jar
    62165  07-16-2025 22:42   ojdbc-provider-opentelemetry-1.0.5-sources.jar
    11640  07-16-2025 22:42   reactive-streams-1.0.4.jar
  1898933  07-16-2025 22:42   reactor-core-3.8.0-M5.jar
   537012  07-16-2025 22:42   reactor-netty-core-1.3.0-M5.jar
   601666  07-16-2025 22:42   reactor-netty-http-1.3.0-M5.jar
    70922  07-16-2025 22:42   slf4j-api-2.1.0-alpha1.jar
     7546  07-16-2025 22:42   product.conf
---------                     -------
 15996340                     75 files
$ unzip ojdbc-extensions-1.0.5.zip product.conf
Archive:  ojdbc-extensions-1.0.5.zip
  inflating: product.conf            
$ cat product.conf 
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\accessors-smart-2.5.2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\asm-20041228.180559.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-core-0.9.8.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-core-http-netty-1.9.2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-data-appconfiguration-1.8.1.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-identity-1.9.2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-json-1.5.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-security-keyvault-secrets-4.9.4.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\azure-xml-1.2.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\content-type-2.3.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jackson-annotations-3.0-rc5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jackson-core-2.9.9.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jackson-databind-2.9.9.3.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jackson-datatype-jsr310-2.9.9.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jackson-module-jaxb-annotations-2.9.9.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jcip-annotations-1.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jna-5.9.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\jna-platform-5.9.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\json-smart-2.5.2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\lang-tag-1.7.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\msal4j-1.9.1.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\msal4j-persistence-extension-1.3.0.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-buffer-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-codec-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-codec-dns-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-codec-http2-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-codec-http-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-codec-socks-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-common-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-handler-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-handler-proxy-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-resolver-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-resolver-dns-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-resolver-dns-classes-macos-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-resolver-dns-native-macos-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-tcnative-boringssl-static-2.0.9.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-tcnative-classes-2.0.72.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-classes-epoll-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-classes-kqueue-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-native-epoll-5.0.0.Alpha2.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-native-kqueue-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\netty-transport-native-unix-common-4.2.3.Final.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\nimbus-jose-jwt-10.3.1.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\oauth2-oidc-sdk-11.9.1.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-aws-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-aws-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-aws-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-azure-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-azure-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-azure-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-common-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-common-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-common-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-gcp-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-gcp-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-gcp-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-hashicorp-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-hashicorp-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-hashicorp-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-jackson-oson-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-jackson-oson-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-jackson-oson-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-oci-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-oci-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-oci-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-opentelemetry-1.0.5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-opentelemetry-1.0.5-javadoc.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\ojdbc-provider-opentelemetry-1.0.5-sources.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\reactive-streams-1.0.4.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\reactor-core-3.8.0-M5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\reactor-netty-core-1.3.0-M5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\reactor-netty-http-1.3.0-M5.jar
AddJavaLibFile C:\Program Files\sqldeveloper\ojdbc-extensions-1.0.5\slf4j-api-2.1.0-alpha1.jar


## Help

*No official support is provided by this script.*

## Contributing

*If you have ideas for improvement, submt them to the project.*

## License

*The correct copyright notice format for both documentation and software is*
    "Copyright (c) [year,] year Oracle and/or its affiliates."
*You must include the year the content was first released (on any platform) and the most recent year in which it was revised*

Copyright (c) 2023 Oracle and/or its affiliates.

*Replace this statement if your project is not licensed under the UPL*

Released under the Universal Permissive License v1.0 as shown at
<https://oss.oracle.com/licenses/upl/>.
