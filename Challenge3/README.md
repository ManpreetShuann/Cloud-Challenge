# Challenge #3

## What the challenge is?

In this Challenge we have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.
Example Inputs:

> object = {"a": {"b": {"c": "d"}}}
> key = "a/b/c"
> Output= d

> Object = {"x": {"y": {"z": "a"}}}
> key = "x/y/z"
> Output = a

---

## Assumptions

- As given in examples the Object would be valid nested dictionary with proper format
- The key would be a String of keys separated by delimiter "/"
- The keys would be valid and would be in the right order as in the nested object

---

## Approach of solving

We will create a python function which will take 2 inputs first one being the Object in the form of a nested dictionary and second will be the string of keys.

---

## Complexity

As we are looping through once till the depth of nested dict, the Complexity is

- Time Complexity: **O(n)**
- Space Complexity: **O(1)**
