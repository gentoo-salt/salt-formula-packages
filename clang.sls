{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}
{% set packages = ['sys-libs/compiler-rt','sys-libs/compiler-rt-sanitizers','sys-libs/libomp','sys-devel/clang-runtime'] %}

{% for pkg in packages %}
{{ package.accept_keywords(
   'clang',
   pkg
) }}
{% endfor %}

{{ package.install(
   'sys-devel/clang',
   ''
) }}

{% endif %}
