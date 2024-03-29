---
layout: post
title: Masking Credit Card Numbers with MySQL
author: Matt McMahand
date: 2010-10-12
comments: false
categories: [Development]
thumb: masking-cards-thumb.jpg
---

So you need to export a list of credit card numbers and send it off someone, but don't want all the digits shown. Sometimes it's for post-processing, QA, or to solve a client dispute with an order. Whatever the case may be, here's how to mask numbers in MySQL:

Masks everything but the first and last 4 digits:

{% highlight sql %}

SELECT
  CONCAT(
    SUBSTRING(c.card_number, 1, 4),
    REPEAT('X', CHAR_LENGTH(c.card_number) - 8),
    SUBSTRING(c.card_number, -4)
  ) AS masked_card
FROM
  table_name;

{% endhighlight %}

Or if you want just the last 4 digits and everything else masked:

{% highlight sql %}

SELECT
  CONCAT(
    REPEAT('X', CHAR_LENGTH(c.card_number) - 4),
    SUBSTRING(c.card_number, -4)
  ) AS masked_card
FROM
  table_name;

{% endhighlight %}

Replace table_name as appropriate. To find out more on these functions I've used, check the mysql docs on [String Functions](http://dev.mysql.com/doc/refman/5.0/en/string-functions.html)
