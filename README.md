# Ruby Setter Method Bypass
This repository demonstrates a subtle bug in Ruby where direct manipulation of instance variables using `instance_variable_set` can bypass setter methods.  This can lead to unexpected behavior and data inconsistencies, especially in larger applications.

The `bug.rb` file showcases the issue. The `bugSolution.rb` file offers a way to mitigate the problem.

This is a common error when developers are not fully aware of the implications of using `instance_variable_set` and how it interacts with defined setter methods.