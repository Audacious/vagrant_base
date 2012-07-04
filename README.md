Vagrent Base
============

After the Vagrant talk by [@ichilton](http://twitter.com/#!/ichilton) at the [May PHPNE](http://phpne.org.uk/2012/05/16/virtualized-development-environments-with-vagrant-2/) and because [@AnthonySterling](http://twitter.com/#!/AnthonySterling) kept going on and on abut it, I have been keen to look more into Vagrant for a while. I have successfully got Vagrant to boot up a new lucid32 machine for testing but I have not really looked into Puppet & Chef or done anything with it.

I have decided to use Chef for my provisioning because [Opscode](http://community.opscode.com/cookbooks) maintain a set of cookbooks (Cookbooks contain Recipes) which can be used in VM's. 

This repo is a place for me to keep a set of Vagrant files and setting for me to use as a base for all future VM's.

* It used Chef not Puppet
* All cookbooks are from Opscode.
* The DocumentRoot of apache is set to the project/www folder.
* In the Vagrantfile I set vagrant_main in the run list and then all others are included (require_recipe) from vagrant_main/recipes/default.rb

Currently included
* apache2
* php

Still to include and test
* MySQL
* PostgreSQL
* Python
* Django Framework
