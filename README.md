# Browser test automation

Browser test automation using ``Selenium`` & ``Ruby``.

It tests user signup process to a blog with the follwing [Link](https://selenium-blog.herokuapp.com/signup).

## Developed on:
Linux :
```
  Operating System: Ubuntu 18.04.3 LTS
            Kernel: Linux 5.0.0-23-generic
      Architecture: x86-64
```
Ruby :
```
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux]
```
Selenium :
```
selenium-webdriver v3.6
```

## Install Dependencies:
```bash
gem install bundler
bundle install
```

## Run tests
```bash
username=<yourUserName> rspec blog-tests.rb
```