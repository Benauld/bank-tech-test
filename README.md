# bank-tech-test

Week 10 tech test

Specification

# Requirements

You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

# How to Test

tests run via RSPEC

# How to Run

# run from ther command line through IRB.

require './lib/account'
require './lib/account_report'

# create a new account

bens_account = Account.new

# create transactions

bens_account.deposit(01-02-2015, 500)
bens_account.withdraw(02-02-2015, 100)

# print the account statement

bens_account.print
