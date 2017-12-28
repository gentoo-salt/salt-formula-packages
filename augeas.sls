{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}
{% set packages = ['app-admin/augeas','dev-python/python-augeas'] %}

{% for pkg in packages %}
{{ package.accept_keywords(
   'augeas',
   pkg
) }}
{% endfor %}

{{ package.install(
   'app-admin/augeas',
   ''
) }}

{% endif %}
