{% if grains['os'] == 'Gentoo' %}

{%- import 'macros/package.sls' as package -%}

apply-package-flags-jenkins:
  portage_config.flags:
    - name: 'dev-util/jenkins-bin'
    - accept_keywords:
      - ~ARCH

apply-package-flags-ghostscript-gpl:
  portage_config.flags:
    - name: 'app-text/ghostscript-gpl'
    - use:
      - cups

apply-package-flags-cairo:
  portage_config.flags:
    - name: 'x11-libs/cairo'
    - use:
      - X

{{ package.install(
   'dev-util/jenkins-bin',
   ''
) }}

{% endif %}
