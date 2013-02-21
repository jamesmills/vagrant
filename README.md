Default Vagrant Setup
=========

A folder structure and default setup for Vagrant.

What's included
--------------
* Apache
* PHP
* MySQL
* OpenSSL
* Sendmail

Things to note
--------------
* Chef is used for provisioning because [Opscode](http://community.opscode.com/cookbooks) maintain a set of cookbooks (Cookbooks contain Recipes).
* All cookbooks are from Opscode
* The DocumentRoot of apache is set to the www folder
* Things can be turned on and off by comenting out the include_recipe found in `cookbooks/application/recipes/default.rb`
* When the machine boots you can view in browser by going to [http://33.33.33.33](http://33.33.33.33)
 
Assumptions
--------------
* [Virtualbox](https://www.virtualbox.org/wiki/Downloads) is installed
* [Vagrant](http://vagrantup.com/) is installed

Let's do it!
--------------
1. Clone this repo to a local folder including the submodules (cookbooks)
2. Move into the new folder
3. Boot up Vagrant
4. SSH into the new Virtual Machine
5. Make coffee as a reward for being awesome

`
git clone --recursive git@github.com:jamesmills/vagrant.git project_folder
cd project_folder
vagrant up
vagrant ssh
`

Symfony
--------------
1. Download, unzip and copy Symfony Standard into the project_folder
2. Remove IP checks from web/config.php & web/app_dev.php

`
curl http://symfony.com/get/Symfony_Standard_Vendors_2.1.7.zip -o archive.zip 
unzip -o archive.zip 
rm -f archive.zip 
cp -R Symfony/ /Users/jamesmills/Projects/project_folder
rm -rf Symfony
`




    