# Bank Tech Test

## Overview
This is a CLI Ruby app that generates a bank account summary table based on the deposits and withdrawls a user makes to their account. This project is a sample tech test used to demonstrate my ability to:
  1. Write code others can easily understand
  2. Build with objects
  3. Test-drive my code

## Getting Started
  Use Ruby 2.5.1
```
 $ git clone git@github.com:JenStrong/tech-test.git
    $ cd tech-test
    $ bundle install
```

## Running Tests
Run `rspec` from the project's root directory


### Process
This project was written using a TDD approach. My process is listed below:
1. Review application specifications and write corresponding user stories (see below)
2. Diagram the needed objects and the flow of information between them
3. Set up project files and add needed gems
4. Implement a feature test than encapsulates the main feature of the app (printing a transaction receipt)
5. Write a single unit test based on the stack trace of my failing feature test
6. Once I had matching feature and unit test failures, I would resolve both the failing feature and unit test
7. Refactor as needed
8. Continue adding and passing unit tests based on the direction from the failing feature test


## User Stories

```
As a customer,  
So that I can keep my money safe,  
I would like to make a deposit to my account
```
```
As a customer,  
So that I can access my money,  
I would like to make a withdrawl from my account
```

```
As a customer,  
So that I can keep track of my deposits and withdrawls,  
I would like to see an account summary
```

## Example CLI output
