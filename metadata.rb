name 'lamp'
maintainer 'JRT'
maintainer_email 'nfernal13@outlook.com'
license 'all_rights'
description 'Installs/Configures lamp'
long_description 'Installs/Configures lamp'
version '0.10.0'

depends "java"
depends "maven"
depends 'mysql', '~> 6.0'
depends 'tomcat'
depends 'apache2'
depends 'zip'
depends 'deploy-play'
depends 'clamav'
depends 'openssl'
depends 'jenkins'