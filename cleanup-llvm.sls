{% if grains['os'] == 'Gentoo' %}

{% set package = 'sys-devel/llvm' %}

{% set llvm_installed = salt['cmd.run']('equery -q list sys-devel/llvm | cut -d "-" -f3 | cut -d "." -f1') %}
{% set llvm_required = 5 %}

print_version:
  cmd.run:
    - name: echo '{{ llvm_installed }}'

{% if llvm_installed|int < llvm_required|int %}
package-remove:
  pkg.removed:
    - name: {{ package }}
{% endif %}

{% endif %}
