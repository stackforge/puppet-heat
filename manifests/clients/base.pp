# Define heat::clients::base
#
#  common client configuration
#
# == Parameters
#
# [*section*]
#   (Optional) Section name used to configure parameters.
#   Defaults to $name.
#
# [*endpoint_type*]
#   (Optional) Type of endpoint in Identity service catalog to use for
#   communication with the OpenStack service.
#   Defaults to $::os_service_default.
#
# [*ca_file*]
#   (Optional) Optional CA cert file to use in SSL communications.
#   Defaults to $::os_service_default.
#
# [*cert_file*]
#   (Optional) Optional PEM-formatted certificate chain file.
#   Defaults to $::os_service_default.
#
# [*key_file*]
#   (Optional) Optional PEM-formatted file that contains the private key.
#   Defaults to $::os_service_default.
#
# [*insecure*]
#   (Optional) If set, then the server's certificate will not be verified.
#   Defaults to $::os_service_default.
#
define heat::clients::base (
  $section       = $name,
  $endpoint_type = $::os_service_default,
  $ca_file       = $::os_service_default,
  $cert_file     = $::os_service_default,
  $key_file      = $::os_service_default,
  $insecure      = $::os_service_default,
) {

  include heat::deps

  heat_config {
    "${section}/endpoint_type": value => $endpoint_type;
    "${section}/ca_file":       value => $ca_file;
    "${section}/cert_file":     value => $cert_file;
    "${section}/key_file":      value => $key_file;
    "${section}/insecure":      value => $insecure;
  }
}