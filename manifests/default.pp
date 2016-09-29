# package { 'epel-release': ensure => 'latest' }
# package { 'puppet': ensure => 'latest' }

package { 'mc': ensure => 'latest' }
package { 'git': ensure => 'latest' }
package { 'screen': ensure => 'latest' }
package { 'sudo': ensure => 'latest' }
package { 'wget': ensure => 'latest' }
package { 'curl': ensure => 'latest' }

# services
package { 'nginx': ensure => 'latest' }
# package { 'postgresql': ensure => 'latest' }
# package { 'postgresql-server': ensure => 'latest' }
package { 'memcached': ensure => 'latest' }
package { 'redis': ensure => 'latest' }

# for building ruby
package { 'gcc': ensure => 'latest' }
package { 'openssl-devel': ensure => 'latest' }
package { 'readline-devel': ensure => 'latest' }
package { 'gdbm-devel': ensure => 'latest' }
package { 'zlib-devel': ensure => 'latest' }

# ruby app deps
package { 'postgresql-devel': ensure => 'latest' }
package { 'nodejs': ensure => 'latest' }

user { 'evemonkapp': ensure => 'present', managehome => true }

service { 'nginx': enable => true, ensure => 'running' }
service { 'memcached': enable => true, ensure => 'running' }
service { 'redis': enable => true, ensure => 'running' }
