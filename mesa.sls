{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}
{% set packages = ['dev-libs/wayland-protocols','x11-libs/libdrm','media-libs/mesa'] %}

{% for pkg in packages %}
{{ package.accept_keywords(
   'mesa',
   pkg
) }}
{% endfor %}

{{ package.install(
   'media-libs/mesa',
   ''
) }}

{% endif %}
