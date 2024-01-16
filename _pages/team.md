---
title: "Team"
layout: container
sitemap: false
permalink: /team/
---

## Team

 <!-- **We are  looking for new team members** [(see openings)]({{ site.url }}{{ site.baseurl }}/vacancies) **!** -->

### Group Leader

<div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
<div class="col-2 d-none d-lg-block p-3" style="display:flex;flex-direction:column;flex:1">
 <img src="/images/photo/shen.png" width="100%" style="max-width:250px" class="img-thumbnail"/>
</div>
<div class="col-10 p-4 d-flex flex-column position-static">
<h3 class="mb-0">Zhihong Shen</h3>
<div class="mb-1 text-body-secondary"><i>PhD supervisor, Director of Big Data Department</i></div>
<div>
<a type="button" class="btn btn-primary btn-sm"  href="mailto:bluejoe@cnic.cn" target="_blank"><i class="bi bi-envelope-at-fill"></i></a> 
<a type="button" class="btn btn-primary btn-sm"  href="https://github.com/bluejoe2008" target="_blank"><i class="bi bi-github"></i></a>
</div>
<p class="card-text mb-auto">Dr. SHEN Zhihong is a Professor in the big data department, CNIC, CAS. His current main research interests include graph database, big data processing, distributed computation and semantic web. Leading his team, Dr. SHEN developed a series of widely used big data software including VisualDB, PiFlow, Voovle, GraiphDB, etc. He also participates in the national key research projects, projects of informatization plan of CAS and customer-oriented applications.</p>
<strong class="d-inline-block mt-2 text-primary-emphasis">Graph Database, Big Data Processing, Distributed Computation, Semantic Web</strong>
</div>


<!-- <div class="col-sm-2">
  <img src="{{ site.url }}{{ site.baseurl }}/images/{{ member.photo }}" width="100%" style="max-width:250px"/>
</div>
<div class="col-sm-9 col-xs-12">
<h4>Zhihong Shen</h4>
<i></i><br>


<!-- <a href="{{ member.scholar }}" target="_blank"><i class="ai ai-google-scholar-square ai-2x"></i></a> -->
<!-- <a href="{{ member.cv }}" target="_blank"><i class="ai ai-cv-square ai-2x"></i></a> -->

<!-- <a href="{{ member.researchgate }}" target="_blank"><i class="ai ai-researchgate-square ai-2x"></i></a> -->
</div>


### Current Students and Postdocs


<div class="row row-cols-1 row-cols-sm-2 row-cols-md-2">
{% for member in site.data.people %}

<div class="col">
<div class="row g-0 rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative bg-body-tertiary"  style="width:100%">
<div class="col-4 p-4" style="display:flex;flex-direction:column;flex:1">
<img src="/images/photo/{{ member.photo }}" width="100%" class="img-thumbnail"/>
</div>
<div class="col-8 p-4 d-flex flex-column position-static">
<strong class="d-inline-block mb-2 text-success-emphasis">{{member.degree}} ({{member.year}})</strong>
<h4 class="mb-0">{{ member.name }}</h4>
<div class="mb-1 text-body-secondary"> {{ member.duration }}</div>
<p class="card-text mb-auto">{{member.info}}</p>
<div>
{% if member.email %}<a href="mailto:{{ member.email }}" target="_blank" class="text-secondary" style="font-size:1.5em"><i class="fa fa-envelope-square"></i></a> {% endif %}
{% if member.github %} <a href="{{ member.github }}" target="_blank" class="text-secondary" style="font-size:1.5em"><i class="fa fa-github-square "></i></a> {% endif %} 
{% if member.researchgate %} <a href="{{ member.researchgate }}" target="_blank" class="text-secondary" style="font-size:1.5em"><i class="ai ai-researchgate-square "></i></a> {% endif %}
</div>
</div>
</div>
</div>
{% endfor %}
</div>



### Alumni



<div class="row row-cols-1 row-cols-sm-2 row-cols-md-2">
{% for member in site.data.alumni %}

<div class="col" >
<div class="row g-0 rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative bg-body-tertiary" style="width:100%">
<div class="col-4 p-4" style="display:flex;flex-direction:column;flex:1">
<img src="/images/photo/{{ member.photo }}" class="img-fluid img-thumbnail" width="100%"/>
</div>
<div class="col-8 p-4 d-flex flex-column position-static">
<h4 class="mb-0">{{ member.name }}</h4>
<h5><strong>{{member.role}}</strong></h5>
<div class="mb-1 text-body-secondary"> {{ member.duration }}</div>
<p class="card-text mb-auto">{{member.info}}</p>
{% if member.email%}
<a href="mailto:{{member.email}}" target="_blank" class="icon-link gap-1 "><i class="fa fa-envelope"></i> Contact via email</a> <br/>
{% endif %}
</div>
</div>
</div>
{% endfor %}
</div>



<!-- ## Administrative Support

<a href="exampleemail@gmail.com">Example staff</a> is helping us (and other groups) with administration.
  -->
