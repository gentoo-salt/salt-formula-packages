{% set pkg = 'sys-devel/llvm' %}
{% set slot = '5' %}

install-package-{{ pkg }}:
  pkg.installed:
    - name: {{ pkg }}
    - version: latest
    - slot: {{ slot }}

