{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'llvm',
   'sys-devel/llvm-common'
) }}

{{ package.accept_keywords(
   'llvm',
   'sys-devel/llvm'
) }}

{{ package.install(
   'sys-devel/llvm',
   '5'
) }}

{% endif %}
