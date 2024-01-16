---
title: "Publications"
layout: container
excerpt: "Publications."
sitemap: false
permalink: /publications/
---


## Publications

### Group highlights

**At the end of this page, you can find the [full list of publications and patents](#full-list-of-publications).**

<div class="row" data-masonry='{"percentPosition": true }' style="position: relative;">
{% for publi in site.data.publist %}
<div class="col-sm-12 col-md-6 mb-2">
<div class="card bg-body-tertiary" style="border:none">
{% if publi.image %}  
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="card-img-top " style="padding:1em;width:80%;margin:auto" alt="{{ publi.title }}">
{% endif %}
<div class="card-body ">
  <h5 class="card-title">{{ publi.title }}</h5>
  <h6 class="card-subtitle text-body-secondary">{{ publi.authors}}</h6>
  <br/>
  <p class="card-text">{{ publi.description }}</p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
{% if publi.pdf %}
<a type="button" class="btn btn-success" href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.pdf }}" target="_blank"><i class="bi text-lg bi-file-earmark-pdf-fill"></i> PDF</a>
{% endif %}
{% if publi.slides %}
<a type="button" class="btn btn-info" href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.slides }}" target="_blank"><i class="bi text-lg bi-file-earmark-slides-fill"></i> Slides</a>
{% endif %}

{% if publi.video %}
<a type="button" class="btn btn-danger" href="{{ publi.video }}" target="_blank"><i class="bi bi-play-btn"></i> Video</a>
{% endif %}
{% if publi.bib %}
<button type="button " class="btn btn-outline-dark" style="float:right" onclick="copy('{{ publi.bib }}')">Copy BIB</button>
{% endif %}
</div>
</div>
</div>
{% endfor %}


</div>


<p> &nbsp; </p>


### Patents
TODO

### Full List of publications

{% for publi in site.data.publist %}

  **{{ publi.title }}**
  <br />
  <em>{{ publi.authors }} </em><br /><a href="{{ publi.link.url }}" style="margin-right:2em">{{ publi.link.display }}</a>{% if publi.pdf %}<a href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.pdf }}" target="_blank">(PDF)</a>{% endif %}

{% endfor %}


<script>
  function copy(text){
    // 创建一个隐藏的textarea元素
    var textarea = document.createElement("textarea");
    document.body.appendChild(textarea);
    
    // 设置需要复制的文本内容
    textarea.value = text;
    
    // 选中并复制文本内容
    textarea.select();
    document.execCommand('copy');
    
    // 移除临时的textarea元素
    document.body.removeChild(textarea);
    console.log(text)
  }
</script>