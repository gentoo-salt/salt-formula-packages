{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}
{% set packages = ['app-admin/salt','dev-python/python-gnupg'] %}

{{ package.use(
   'salt',
   'app-admin/salt',
   'portage libvirt libcloud gnupg cherrypy openssl'
) }}

{% for pkg in packages %}
{{ package.accept_keywords(
   'salt',
   pkg
) }}
{% endfor %}

{{ package.install(
   'app-admin/salt',
   ''
) }}

{% endif %}
