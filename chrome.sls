{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'chrome',
   'www-client/google-chrome'
) }}

{{ package.license(
   'chrome',
   'www-client/google-chrome',
   'google-chrome'
) }}

{{ package.install(
   'www-client/google-chrome',
   ''
) }}

{% endif %}
