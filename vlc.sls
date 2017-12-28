{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'vlc',
   'media-video/vlc'
) }}

{{ package.install(
   'media-video/vlc',
   ''
) }}

{% endif %}
