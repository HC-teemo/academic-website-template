---
title: "Software"
layout: default
sitemap: false
permalink: /software/
---

<style>
  .b-divider {
    width: 100%;
    height: 3rem;
    background-color: rgba(0, 0, 0, .1);
    border: solid rgba(0, 0, 0, .15);
    border-width: 1px 0;
    box-shadow: inset 0 0.5em 1.5em rgba(0, 0, 0, .1), inset 0 0.125em 0.5em rgba(0, 0, 0, .15);
}
</style>
<div class="container">
<h2>Software</h2>
</div>
{% for s in site.data.software %}
{% if s!=site.data.software.first %}<div class="b-divider"></div>{% endif %}
<div class="container">
<div class="row flex-lg-row-reverse align-items-center g-5 py-5">
<div class="col-10 col-sm-8 col-lg-6">
<img src="/images/softpic/{{ s.image }}" class="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy">
</div>
<div class="col-lg-6">
<h1 class="display-5 fw-bold text-body-emphasis lh-1 mb-3">{{s.name}}</h1>
<p>{{s.tags}}</p>
<p class="lead">{{s.description}}</p>
<div class="d-grid gap-2 d-md-flex justify-content-md-start">
<a type="button" class="btn btn-primary btn-lg px-4 me-md-2" href="{{ s.github }}" target="_blank"><i class="bi text-lg bi-github"></i> GitHub</a>
{% if s.website %}
<a type="button" class="btn btn-outline-secondary btn-lg px-4" href="{{ s.website }}" target="_blank">Website</a> 
{% endif %}
</div>
</div>
</div>
<div class="row g-4 py-5  row-cols-1 row-cols-lg-3">
{% for f in s.features%}
<div class="col d-flex align-items-start">
<div class="text-body-emphasis bg-body-secondary d-inline-flex align-items-center justify-content-center fs-4 flex-shrink-0 me-3 " style="width:2em;height:2em;border-radius: .75rem;">
<i class="bi bi-{{f.icon}}" style="width:1em;"></i>
</div>
<div>
<h3 class=" text-body-emphasis">{{f.title}}</h3>
<p>{{f.text}}</p>
</div>
</div>
{% endfor %}
</div>
</div>

{% endfor %}
