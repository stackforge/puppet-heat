# Class heat::cache
#
#  heat cache configuration
#
# == parameters
#
# [*config_prefix*]
#   (Optional) Prefix for building the configuration dictionary for
#   the cache region. This should not need to be changed unless there
#   is another dogpile.cache region with the same configuration name.
#   (string value)
#   Defaults to $::os_service_default
#
# [*expiration_time*]
#   (Optional) Default TTL, in seconds, for any cached item in the
#   dogpile.cache region. This applies to any cached method that
#   doesn't have an explicit cache expiration time defined for it.
#   (integer value)
#   Defaults to $::os_service_default
#
# [*backend*]
#   (Optional) Dogpile.cache backend module. It is recommended that
#   Memcache with pooling (oslo_cache.memcache_pool) or Redis
#   (dogpile.cache.redis) be used in production deployments. (string value)
#   Defaults to $::os_service_default
#
# [*backend_argument*]
#   (Optional) Arguments supplied to the backend module. Specify this option
#   once per argument to be passed to the dogpile.cache backend.
#   Example format: "<argname>:<value>". (list value)
#   Defaults to $::os_service_default
#
# [*proxies*]
#   (Optional) Proxy classes to import that will affect the way the
#   dogpile.cache backend functions. See the dogpile.cache documentation on
#   changing-backend-behavior. (list value)
#   Defaults to $::os_service_default
#
# [*enabled*]
#   (Optional) Global toggle for caching. (boolean value)
#   Defaults to $::os_service_default
#
# [*debug_cache_backend*]
#   (Optional) Extra debugging from the cache backend (cache keys,
#   get/set/delete/etc calls). This is only really useful if you need
#   to see the specific cache-backend get/set/delete calls with the keys/values.
#   Typically this should be left set to false. (boolean value)
#   Defaults to $::os_service_default
#
# [*memcache_servers*]
#   (Optional) Memcache servers in the format of "host:port".
#   (dogpile.cache.memcache and oslo_cache.memcache_pool backends only).
#   (list value)
#   Defaults to $::os_service_default
#
# [*memcache_dead_retry*]
#   (Optional) Number of seconds memcached server is considered dead before
#   it is tried again. (dogpile.cache.memcache and oslo_cache.memcache_pool
#   backends only). (integer value)
#   Defaults to $::os_service_default
#
# [*memcache_socket_timeout*]
#   (Optional) Timeout in seconds for every call to a server.
#   (dogpile.cache.memcache and oslo_cache.memcache_pool backends only).
#   (floating point value)
#   Defaults to $::os_service_default
#
# [*memcache_pool_maxsize*]
#   (Optional) Max total number of open connections to every memcached server.
#   (oslo_cache.memcache_pool backend only). (integer value)
#   Defaults to $::os_service_default
#
# [*memcache_pool_unused_timeout*]
#   (Optional) Number of seconds a connection to memcached is held unused
#   in the pool before it is closed. (oslo_cache.memcache_pool backend only)
#   (integer value)
#   Defaults to $::os_service_default
#
# [*memcache_pool_connection_get_timeout*]
#   (Optional) Number of seconds that an operation will wait to get a memcache
#   client connection. (integer value)
#   Defaults to $::os_service_default
#
# [*manage_backend_package*]
#   (Optional) Whether to install the backend package for the cache.
#   Defaults to true
#
# [*constraint_validation_caching*]
#   (Optional) Enable caching in constraint validation. Global caching should
#   be also enabled to enable this.
#   Defaults to $::os_service_default
#
# [*constraint_validation_expiration_time*]
#   (Optional) TTL, in seconds, for caching in constraint validation.
#   Defaults to $::os_service_default
#
# [*service_extension_caching*]
#   (Optional) Enable caching in service extension. Global caching should
#   be also enabled to enable this.
#   Defaults to $::os_service_default
#
# [*service_extension_expiration_time*]
#   (Optional) TTL, in seconds, for caching in service extention.
#   Defaults to $::os_service_default
#
# [*resource_finder_caching*]
#   (Optional) Enable caching in resource finder. Global caching should
#   be also enabled to enable this.
#   Defaults to $::os_service_default
#
# [*resource_finder_expiration_time*]
#   (Optional) TTL, in seconds, for caching in resource finder.
#   Defaults to $::os_service_default
#
# [*tls_enabled*]
#   (Optional) Global toggle for TLS usage when comunicating with
#   the caching servers.
#   Default to $::os_service_default
#
# [*tls_cafile*]
#   (Optional) Path to a file of concatenated CA certificates in PEM
#   format necessary to establish the caching server's authenticity.
#   If tls_enabled is False, this option is ignored.
#   Default to $::os_service_default
#
# [*tls_certfile*]
#   (Optional) Path to a single file in PEM format containing the
#   client's certificate as well as any number of CA certificates
#   needed to establish the certificate's authenticity. This file
#   is only required when client side authentication is necessary.
#   If tls_enabled is False, this option is ignored.
#   Default to $::os_service_default
#
# [*tls_keyfile*]
#   (Optional) Path to a single file containing the client's private
#   key in. Otherwhise the private key will be taken from the file
#   specified in tls_certfile. If tls_enabled is False, this option
#   is ignored.
#   Default to $::os_service_default
#
# [*tls_allowed_ciphers*]
#   (Optional) Set the available ciphers for sockets created with
#   the TLS context. It should be a string in the OpenSSL cipher
#   list format. If not specified, all OpenSSL enabled ciphers will
#   be available.
#   Default to $::os_service_default
#
class heat::cache (
  $config_prefix                         = $::os_service_default,
  $expiration_time                       = $::os_service_default,
  $backend                               = $::os_service_default,
  $backend_argument                      = $::os_service_default,
  $proxies                               = $::os_service_default,
  $enabled                               = $::os_service_default,
  $debug_cache_backend                   = $::os_service_default,
  $memcache_servers                      = $::os_service_default,
  $memcache_dead_retry                   = $::os_service_default,
  $memcache_socket_timeout               = $::os_service_default,
  $memcache_pool_maxsize                 = $::os_service_default,
  $memcache_pool_unused_timeout          = $::os_service_default,
  $memcache_pool_connection_get_timeout  = $::os_service_default,
  $manage_backend_package                = true,
  $constraint_validation_caching         = $::os_service_default,
  $constraint_validation_expiration_time = $::os_service_default,
  $service_extension_caching             = $::os_service_default,
  $service_extension_expiration_time     = $::os_service_default,
  $resource_finder_caching               = $::os_service_default,
  $resource_finder_expiration_time       = $::os_service_default,
  $tls_enabled                           = $::os_service_default,
  $tls_cafile                            = $::os_service_default,
  $tls_certfile                          = $::os_service_default,
  $tls_keyfile                           = $::os_service_default,
  $tls_allowed_ciphers                   = $::os_service_default,
) {

  include heat::deps

  oslo::cache { 'heat_config':
    config_prefix                        => $config_prefix,
    expiration_time                      => $expiration_time,
    backend                              => $backend,
    backend_argument                     => $backend_argument,
    proxies                              => $proxies,
    enabled                              => $enabled,
    debug_cache_backend                  => $debug_cache_backend,
    memcache_servers                     => $memcache_servers,
    memcache_dead_retry                  => $memcache_dead_retry,
    memcache_socket_timeout              => $memcache_socket_timeout,
    memcache_pool_maxsize                => $memcache_pool_maxsize,
    memcache_pool_unused_timeout         => $memcache_pool_unused_timeout,
    memcache_pool_connection_get_timeout => $memcache_pool_connection_get_timeout,
    manage_backend_package               => $manage_backend_package,
    tls_enabled                          => $tls_enabled,
    tls_cafile                           => $tls_cafile,
    tls_certfile                         => $tls_certfile,
    tls_keyfile                          => $tls_keyfile,
    tls_allowed_ciphers                  => $tls_allowed_ciphers,
  }

  heat_config {
    'constraint_validation_cache/caching':         value => $constraint_validation_caching;
    'constraint_validation_cache/expiration_time': value => $constraint_validation_expiration_time;
    'service_extension_cache/caching':             value => $service_extension_caching;
    'service_extension_cache/expiration_time':     value => $service_extension_expiration_time;
    'resource_finder_cache/caching':               value => $resource_finder_caching;
    'resource_finder_cache/expiration_time':       value => $resource_finder_expiration_time;
  }
}
