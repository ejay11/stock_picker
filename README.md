Stock Picker Project from <a href="https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/stock-picker">The Odin Project</a>

Instructions: 
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

<ul>
    <li>You need to buy before you can sell</li>
    <li>Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.</li>

Example: 
 > stock_picker([17,3,6,9,15,8,6,1,10])
 => [1,4]  # for a profit of $15 - $3 == $12

Written in Ruby. 