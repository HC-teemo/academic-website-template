---
title: "Allan Lab - Publications"
layout: default
excerpt: "Allan Lab -- Publications."
sitemap: false
permalink: /publications/
---


# Publications

## Group highlights

**At the end of this page, you can find the [full list of publications and patents](#full-list-of-publications).**

{% assign number_printed = 0 %}
{% for publi in site.data.publist %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if publi.highlight%}

{% if even_odd == 0 %}
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-2 g-3">
{% endif %}

<div class="col">
<div class="card">  
<img src="{{ site.url }}{{ site.baseurl }}/images/pubpic/{{ publi.image }}" class="card-img-top " style="padding:1em;width:80%;margin:auto" alt="{{ publi.title }}">
<div class="card-body ">
  <h5 class="card-title">{{ publi.title }}</h5>
  <h6 class="card-subtitle text-body-secondary">{{ publi.authors}}</h6>
  <br/>
  <p class="card-text">{{ publi.description }}</p>
  <p><strong><a href="{{ publi.link.url }}">{{ publi.link.display }}</a></strong></p>
{% if publi.pdf %}
<a type="button" class="btn btn-success" href="{{ site.url }}{{ site.baseurl }}/papers/{{ publi.pdf }}" target="_blank"><i class="bi text-lg bi-file-earmark-pdf"></i> PDF</a>
{% endif %}
{% if publi.video %}
<a type="button" class="btn btn-danger" href="{{ publi.video }}" target="_blank"><i class="bi bi-play-btn"></i> Video</a>
{% endif %}
{% if publi.bib %}
<button type="button " class="btn btn-dark" onclick="copy('{{ publi.bib }}')">Copy BIB</button>
{% endif %}
</div>
</div>
</div>

{% assign number_printed = number_printed | plus: 1 %}

{% if even_odd == 1 %}
</div>
{% endif %}

{% endif %}
{% endfor %}

{% assign even_odd = number_printed | modulo: 2 %}
{% if even_odd == 1 %}
</div>
{% endif %}

<p> &nbsp; </p>


## Patents
TODO

## Full List of publications

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