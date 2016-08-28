Local provisioning for my macbook
====================

Based on the blog post [here](http://marvelley.com/blog/2014/04/11/local-provisioning-with-ansible/).

Steps:

On your new machine, you first need ansible.  Best way to install on the mac is:

```
curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python
sudo easy_install pip
pip install ansible
```

You also need to generate a keypair and add it to your github, as this script clones my [dotfiles repo](https://www.github.com/dgliwa/dotfiles)

After cloning this repo:

```
cd ./local-provisioning
ansible-playbook -i "localhost," -c local playbook.yml
```

That should be it!
