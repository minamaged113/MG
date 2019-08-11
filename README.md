# Browser test automation

Browser test automation using ``Selenium`` & ``Ruby``.

It tests user signup process to a blog with the follwing [Link](https://selenium-blog.herokuapp.com/signup).

For iterative testing, it augments timestamp to the given username to create a new user everytime, instead of entering details for an existing user details from previous tests.

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

## Structure
The structure is built using ``Page Object Pattern`` where each page has its own class with its own CSS selectors and methods to perform the given tests. 
```bash
.
├── blog-tests-distributed.rb   # Main test runner
├── Gemfile                     # Gem, Ruby's package manager
├── README.md                   # markdown intro
├── SignupPage.rb               # Signup Page Class
└── UsersPage.rb                # Users Page Class
```

## Run tests

### Run directly:
Run the tests on the local machine.
```bash
rspec blog-tests.rb
```

### Run as distributed system test:
Run the tests on the Hub-Node distributed system. This setup requires ``selenium standadlone server``. It can be downloaded from [here](https://www.seleniumhq.org/download/).
```bash
# Navigate to the directory containing the downloaded [.jar] file.
# Start the Hub:
java -jar selenium-server-standalone-3.141.59.jar -role hub -port 40000
# Create a node
java -jar selenium-server-standalone-3.141.59.jar -role node -hub https://192.168.1.8:40000/grid/register
# Run tests:
rspec blog-tests-distributed.rb
```