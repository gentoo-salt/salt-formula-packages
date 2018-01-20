{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package-install.sls' as install -%}
{%- import 'macros/package-unmask.sls' as unmask -%}

{{ unmask.package_unmask(
   'docker',
   'app-emulation/docker-proxy'
) }}

{{ unmask.package_unmask(
   'docker',
   'app-emulation/docker-runc'
) }}

{{ install.package_install(
   'docker',
   'app-emulation/docker',
   '',
   'True',
   '',
   ''
) }}

{% endif %}
