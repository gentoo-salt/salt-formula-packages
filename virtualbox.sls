{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{% set packages = ['app-emulation/virtualbox-extpack-oracle','app-emulation/virtualbox-additions','app-emulation/virtualbox'] %}
{% set dependencies = ['app-emulation/virtualbox-modules', 'dev-util/kbuild'] %}

{#{% set layman_repo = 'pg_overlay' %}#}
{#{% set layman_repo = 'gentoo' %}#}
{% set layman_repo = '' %}

{% if layman_repo %}
add-layman:
  layman.present:
    - name: {{ layman_repo }}
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
