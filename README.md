# ActionScript 3 Error: TypeError: Error #1009

This repository demonstrates a common ActionScript 3 error and its solution.  The error, `TypeError: Error #1009: Cannot access a property or method of a null object reference`, often arises from attempting to access a property or method of an object that hasn't been properly initialized or is currently null. 

The `bug.as` file contains the erroneous code, while `bugSolution.as` provides a corrected version.

## Problem
The original code attempts to parse XML data and create MovieClip instances based on the XML structure. However, it fails to handle cases where the XML data might be malformed or empty, resulting in `item.name`, `item.x`, or `item.y` being null, leading to the #1009 error.

## Solution
The solution adds error handling using `if` statements to check if the necessary XML properties exist before accessing them. This prevents the error by skipping any malformed or incomplete XML items.