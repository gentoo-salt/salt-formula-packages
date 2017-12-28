{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{% set packages = ['app-emulation/virtualbox-extpack-oracle','app-emulation/virtualbox-additions','app-emulation/virtualbox'] %}
{% set dependencies = ['app-emulation/virtualbox-modules', 'dev-util/kbuild'] %}

{#{% set virtualbox_layman = 'pg_overlay' %}#}
{#{% set virtualbox_layman = 'gentoo' %}#}
{% set virtualbox_layman = '' %}

{% if virtualbox_layman %}
add-layman:
  layman.present:
    - name: {{ virtualbox_layman }}
{% endif %}

{% for pkg in packages %}
{{ package.accept_keywords(
   'virtualbox',
   pkg
) }}
{% endfor %}

{% for pkg in dependencies %}
{{ package.accept_keywords(
   'virtualbox',
   pkg
) }}
{% endfor %}

{{ package.license(
   'virtualbox',
   'app-emulation/virtualbox-extpack-oracle',
   'PUEL'
) }}

{% for pkg in packages %}
{{ package.install(
   pkg,
   ''
) }}
{% endfor %}

{% endif %}
