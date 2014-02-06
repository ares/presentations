# Foreman integration with Chef

---

# BIO

* Marek Hulán
* IRC: mhulan #theforeman on freenode
* GitHub: ares
* work @ RedHat on Foreman project

---

# Overview of this presentation

1. Briefly show Foreman provisioning
2. Status of Chef integration including live demo
3. Future steps of further integration
4. Other config management tools

---

# Meet Foreman

<br />
<br />
![foreman](foreman.png)

---

# Puppet workflow overiew

![puppet](puppet.svg)
     
---

# What do we support for chef world

![chef](chef.svg)

---

# Infrastrucure for this demo

![infra](infra.svg)

---

# Authentication

![authentication](authentication.svg)

---

# Let's see some action

<br />
<br />
<br />
<br />
![action](action.jpg)

---

# Further integration

* Do we want to manage runlist and attributes in foreman?
* Is chef "source of truth"?
* Two way synchronization between Foreman and Chef?
* Do we want Foreman to become new Chef UI?

![needyou](needyou.jpg)

---

# Support for other config management tools

Facts upload format

    !json
    {
      "name"    : "fqdn.example.com",
      "certname": "optional.certname.for.this.host",
      "facts"   : {
                    "fact1"                 : "value",
                    "fact2"                 : "value",
                    "fact2::nested::fact"   : "value",
                    "_timestamp"            : "2013-10-18 07:47:45 +0000",
                    "_type"                 : "puppet",
                    "operatingsystem"       : "Debian",
                    "operatingsystemrelease": "7.0"
                  }
    }

[http://projects.theforeman.org/projects/foreman/wiki/Json-fact-format](http://projects.theforeman.org/projects/foreman/wiki/Json-fact-format)

---

# Support for other config management tools

Reports upload format

    !ruby
    {
     "host"       : "fqdn.example.com",
     "reported_at": "2013-10-18 06:58:09 UTC",          
     "status"     : {  "applied"        : n,          
                       "restarted"      : n,          
                       "failed"         : n,          
                       "failed_restarts": n,          
                       "skipped"        : n,          
                       "pending"        : n           
                     },
     "metrics": { "resources": { 'total' : n }          
                   "time"    : { "resource_type1" : n,  
                                 "resource_type2" : n,  
                                 "total"          : n  }
                 },
     "logs": [ 
                { "log": { "sources" : { "source"  : "resource name" },   
                           "messages": { "message" : "resource message" },
                           "level"   : "notice" }                         
                }
              ]
    }

[http://projects.theforeman.org/projects/foreman/wiki/Json-report-format](http://projects.theforeman.org/projects/foreman/wiki/Json-report-format)

---

# Most important notes

* We need to hear your stories
* You can already use foreman for provisioning, monitoring and inventory listing with Chef
* We want to go deeper
<br />
<br />
![chefo](chefo.png)
![chefhelmet](chefhelmet.jpg)

---

# Links

* <b>IRC:</b> #theforeman @ freenode
* <b>Project wiki:</b> [projects.theforeman.org/projects/foreman/wiki/Chef-support](http://projects.theforeman.org/projects/foreman/wiki/Chef-support)
* <b>chef-client extension:</b> [github.com/theforeman/chef-handler-foreman](https://github.com/theforeman/chef-handler-foreman)
* <b>foreman attributes plugin:</b> <br /> [github.com/theforeman/foreman_chef](https://github.com/theforeman/foreman_chef)

---

# Questions


