{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.use(
   'testdisk',
   'app-admin/testdisk',
   'ntfs reiserfs'
) }}

{{ package.install(
   'app-admin/testdisk',
   ''
) }}

{% endif %}
