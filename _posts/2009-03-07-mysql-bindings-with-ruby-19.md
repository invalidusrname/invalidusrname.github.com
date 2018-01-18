---
layout: post
title: MySQL bindings with Ruby 1.9
author: Matt McMahand
date: 2009-03-07
comments: false
categories: [Ruby, Development]
---

I've started messing around with Rails 2.3.1 (aka RC2) and seeing how it works with Ruby 1.9. Aside from having to install all my gems for the new version of Ruby, the mysql bindings needed to be installed too. Here's how I got it working:

<em>Note: I'm using macports installations of <a href="http://trac.macports.org/browser/trunk/dports/lang/ruby19/Portfile">ruby 1.9</a> and <a href="http://trac.macports.org/browser/trunk/dports/databases/mysql5/Portfile">mysql</a></em>

{% highlight shell %}

# Grab mysql-ruby

wget http://rubyforge.org/frs/download.php/51087/mysql-ruby-2.8.1.tar.gz

# Setup to use your mysql configuration files

ruby1.9 extconf.rb \
  --with-mysql-include=/opt/local/include/mysql5/mysql/ \
  --with-mysql-lib=/opt/local/lib/mysql5/mysql/ \
  --with-mysql-config=/opt/local/bin/mysql_config5

sudo make

# Run tests to make sure everything passes
ruby1.9 ./test.rb -- localhost

# And to finish it out
sudo make install

{% endhighlight %}
