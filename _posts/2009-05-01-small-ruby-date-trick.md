---
layout: post
title: Small Ruby Date trick
author: Matt McMahand
date: 2009-05-01
comments: false
categories: [Ruby, Development]
---

Well I don't know if it's a trick, but this sure was useful when I was coding up some sql reports.

{% highlight ruby %}

>> Date.new(2009, 1, -1).to_s
=> "2009-01-31"

{% endhighlight %}
