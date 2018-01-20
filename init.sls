{% if grains['os'] == 'Gentoo' %}

from jinja2 import Environment

{% set packages = salt['grains.get']('packages', '') %}

{% if packages %}
include: > [ {% for pkg in packages %}packages.{{pkg}}{% if not loop.last %},{% endif %}{% endfor %} ]
{% endif %}

{% endif %}
