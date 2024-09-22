# Notes on Optimization in R
The idea behind this repo is to write down and test a series of examples on Optimization in Economics. Feel free to read, copy and use it if you need.



## Basic example
The following is a basic example on how to find the optimal quantity to produce given *Demand Function* and *Marginal Cost*.

Given the price function and marginal cost, we want to know what is the optimal quantity to produce
$$
p = 100-Q \ and \ MC=4
$$
We are a for-profit company and, conseguently, aim to maximize our profit. To do so, we need to identify our objective function and maximize it by choosing the most appropriate quantity.

$$
max_Q  ((100-Q)Q-4Q)
$$
Expanding the expression and applying the F.O.C we obtain

$$
100Q-Q^2 -4Q
$$

$$
100-2Q-4=0  \\ (F.O.C.)
$$

$$
96= 2Q
$$

$$
Q^* = 48
$$

Attached the **R** code that can be used to obtain the same result.

n.b. It uses an interation up to 100, which is *not* perfect of course.

> You can find more information about my Research [here](https://sites.google.com/view/carmineapice/home).
