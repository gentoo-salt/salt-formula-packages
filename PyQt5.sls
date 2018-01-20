{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.use(
   'salt',
   'app-admin/salt',
   'portage libvirt libcloud gnupg cherrypy openssl'
) }}


dev-python/python-gnupg

{{ package.install(
   'app-admin/salt',
   ''
) }}

{% endif %}
