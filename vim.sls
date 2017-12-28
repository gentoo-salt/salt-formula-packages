{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.accept_keywords(
   'vim',
   'app-editors/vim-core'
) }}

{{ package.accept_keywords(
   'vim',
   'app-editors/vim'
) }}

{{ package.use(
   'vim',
   'app-editors/vim',
   'PYTHON_TARGETS: -* python2_7 python3_5'
) }}

{{ package.install(
   'app-editors/vim',
   ''
) }}

{% endif %}
