# ChatTEr [Chat based TestEr]

This is a ChatBot Which be used for driving testing operations from chat ,  
currently supports below operations

* Test Website with Selenium on headless Browser
*

## Project  
https://irfan.chandler.ai/chatter

## Pre-requisite and How to Setup

1.prepare system with package manager

install homebrew on mac , MacPort installation is not recommended
OR apt-get package manager on Ubuntu

Install gpg on system ,for mac

```
$ brew install gpg
```
OR on Ubuntu

```
$ sudo apt-get install gpg
```

2.Install Ruby on mac /ubuntu

Install the latest stable release of Ruby.
```
$ \curl -sSL https://get.rvm.io | bash -s stable
$ rvm install ruby
```

Make sure rvm is using the correct ruby by default
```
$ rvm list
$ rvm --default use 2.2.1
```

If you have an old ruby/rvm, you can upgrade with
```
$ rvm get head
$ rvm autolibs homebrew
$ rvm install ruby
```

Check that it’s installed properly by printing the ruby version.
```
$ ruby --version
```

Update RubyGems and Bundler.

```
$ gem update --system
$ gem install --no-rdoc --no-ri bundler
$ gem update
$ gem cleanup
$ gem install bundler
```

clone the repo and run bundle install ,all dependencies will be added
```
$ git clone ssh://ubuntu@git.upgrad.com:2222/diffusion/14/chatops.git
$ cd chatops
$ bundle install
```

3.Install Redis Server

```
$ brew install redis-server OR
$ sudo apt-get install redis-server
```


## How to Run
1.Ensure redis running.
```
$ redis-server
```

2.Start lita
```
$ lita start
```

## Usage

On slack , please type below
```
raj, deploy <app> with <branch> on <env> please
```
Example

```
Chatter, Test http://irfan.chandler.ai with selenium on chrome please
```

## Unit Tests

To run unit tests wit rspec
```
$ rake spec
```

## Lint Checks and Rubocop

To run Rubocop locally for code quality analysis
```
$ rake rubocop
```


### To contribute to the library

* Clone this repo and perform all changes on your local repo
* Read Git Contribution best practices below
* Create your feature branch (`git checkout -b new_feature`)
* Commit your changes (`git commit -am 'Add some feature'`)
* Push to the branch (`git push origin new_feature`)
* Create a new Pull Request and add summary, test plan and reviewer
* Wait for Review Acceptance
* Post Acceptance Land Changes to Integration branch.

### Git Contribution best practices

* Commit often
* Commit related changes
* Don't commit half-done work
* Test code before commit
* Write clear commit messages [what changed ,why ,where ]
* Always create a PR for changes from your fork to upstream
* Upstream is not a backup system ,your fork is
* Use branches for every separate feature ,bug,ideas ,project

### Owner
Email   : irfan.ahmad@chandler.ai  
Twitter : notimewaste

### UpComing Features
* Integration with Selenium for Web Testing
* Integration with Appium and SauceLabs for Mobile App Testing
* Support to  Test RESTful API's
* Support to drive CI Operations

### Directory structure

  ```   
  ├── handlers    
  ├── spec    
  ├── config     
  └── Rakefile   
  ```   
