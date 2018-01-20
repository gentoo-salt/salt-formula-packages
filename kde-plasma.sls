{% if grains['os'] == 'Gentoo' %}

package-kde-meta:
  pkg.installed:
    - name: kde-apps/kde-meta
    - version: latest

package-plasma-meta:
  pkg.installed:
    - name: kde-plasma/plasma-meta 
    - version: latest

{% endif %}
