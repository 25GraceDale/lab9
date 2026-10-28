# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Christopher Turmes and Grace Dale

## Summary
In this lab, we created a simple memory circuit by utilizing an enable and data relationship. This relationship decides whether data gets assigned to memory, and then that memory is retained until enable = 1 again. Thus, input values are retained until the user decides to reassign them.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Strutural Verilog will throw a combinatoral loop error in simulation, as the possibility of an unconstrained zero-delay feedback loop is a point of concern. Behavioral Verilog defines board operations in terms of general behavior instead of pure logic where we are defining terms directly. 

### What is the meaning of always @(*) in a sensitivity block?
The contents within the sensitivity block trigger whenever a signal within the block changes value. * notation does not require memory to operate.

### What importance is memory to digital circuits?
Memory allows us to preform operations without needing a continuous input. It is the basis for how computers run and operate, as being able to hold values, despite other inputs coming in, is powerful for setting up bigger systems.
