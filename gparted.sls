{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{{ package.use(
   'gparted',
   'sys-block/gparted',
   'btrfs fat ntfs reiser4 reiserfs xfs'
) }}

{{ package.accept_keywords(
   'gparted',
   'sys-block/gparted'
) }}

{{ package.install(
   'sys-block/gparted',
   ''
) }}

{% endif %}
