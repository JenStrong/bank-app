# Bank Tech Test

## Overview
This is a CLI Ruby app that generates a bank account summary table based on the deposits and withdrawls a user makes to their account. This project is a sample tech test used to demonstrate my ability to:
  1. Write code others can easily understand
  2. Build with objects
  3. Test-drive my code

## How it Works
![alt text](https://github.com/JenStrong/bank-tech-test/blob/master/public/out.gif)

## Getting Started
  Use Ruby 2.5.1
```
 $ git clone git@github.com:JenStrong/tech-test.git
    $ cd tech-test
    $ bundle install
```

## Process
This project was written using a TDD approach. My process is listed below:
1. Review application specifications and write corresponding user stories (see below)
2. Diagram the needed objects and the flow of information between them
3. Set up project files and add needed gems
4. Implement a feature test than encapsulates the main feature of the app (printing a transaction receipt)
5. Write a single unit test based on the stack trace of my failing feature test
6. Once I had matching feature and unit test failures, I would resolve both the failing feature and unit test
7. Refactor as needed
8. Continue adding and passing unit tests based on the direction from the failing feature test


## Running Tests
Run `rspec` from the project's root directory

## Test Coverage
![alt text](https://github.com/JenStrong/bank-tech-test/blob/master/public/test_coverage.png)

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
```
Jens-MacBook-Air:tech-test jstrong$ irb
2.5.1 :001 > require './lib/account.rb'
 => true
2.5.1 :002 > require './lib/transaction.rb'
 => true
2.5.1 :003 > account = Account.new
 => #<Account:0x00007fde5e8a15f8 @formatter=#<Formatter:0x00007fde5e8a1580>, @account_summary=[], @balance=0.0>
2.5.1 :004 > credit_transaction = Transaction.new(500.00, "10/04/2018", :credit)
 => #<Transaction:0x00007fde5d04ec58 @amount=500.0, @date="10/04/2018", @type=:credit>
2.5.1 :005 > account.credit(credit_transaction)
 => [[#<Transaction:0x00007fde5d04ec58 @amount=500.0, @date="10/04/2018", @type=:credit>, 500.0]]
2.5.1 :006 > debit_transaction = Transaction.new(400.00, "12/04/2018", :debit)
 => #<Transaction:0x00007fde5e83b7a8 @amount=400.0, @date="12/04/2018", @type=:debit>
2.5.1 :007 > account.debit(debit_transaction)
 => [[#<Transaction:0x00007fde5d04ec58 @amount=500.0, @date="10/04/2018", @type=:credit>, 500.0], [#<Transaction:0x00007fde5e83b7a8 @amount=400.0, @date="12/04/2018", @type=:debit>, 100.0]]
2.5.1 :008 > print account.statement
date || credit || debit || balance
12/04/2018 || || 400.00 || 100.00
10/04/2018 || 500.00 || || 500.00 => nil
```
