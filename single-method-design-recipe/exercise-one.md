# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

The user wants to see an estimate of reading time for a text, assuming that they can read 200 words per minute.

## 2. Design the Method Signature

reading_time = estimate_reading_time(text)  
text: a string of words given by the user  
reading_time: an integer representing minutes

The method will print the estimate reading time.

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

estimate_reading_time('') => 0
estimate_reading_time('one') => 1
estimate_reading_time(TWO_HUNDRED_WORDS) => 1
estimate_reading_time(SIX_HUNDRED_WORDS) => 3
estimate_reading_time(SIX_HUNDRED_AND_FIFTY_WORDS) => 3
estimate_reading_time(ONE_THOUSAND_WORDS) => 5

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
