{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

{% set packages = ['app-emulation/vagrant','dev-ruby/net-ssh','dev-ruby/rake','dev-libs/libxml2','dev-ruby/net-scp','dev-ruby/nokogiri','dev-ruby/hashicorp-checkpoint','dev-ruby/listen','dev-ruby/i18n','dev-ruby/rb-inotify','dev-libs/libxslt','dev-ruby/ruby_dep'] %}

{% for pkg in packages %}
{{ package.accept_keywords(
   'vagrant',
   pkg
) }}
{% endfor %}

{{ package.install(
   'app-emulation/vagrant',
   ''
) }}

{% endif %}
