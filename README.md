splunk_anyversion
=================

This is a Vagrant file that will:

- use a precise32 virtual guest
- boot the vm, natting port 8000 from the guest to the host
- install any version of Splunk (configurable in the setup_splunk file)
- allow you to http://localhost:8000 to use splunk

Quick Start
-----------

- Install VirtualBox ( https://www.virtualbox.org )
- Install Vagrant  ( http://www.vagrantup.com )
- git clone https://github.com/bshuler/splunk_anyversion.git
- cd splunk_anyversion
- vagrant up

This will set up a splunk instance with 5.0.3 by default.

if you want a different version, set the SPLUNK_VERSION in setup_splunk.

Navigate a browser to http://localhost:8000 and enjoy.

Vagrant Commands
----------------

vagrant up
vagrant destroy -f

