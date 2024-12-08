# Shell Script Bug: Incorrect Largest Number Finding

This repository contains a shell script that attempts to find the largest number in a file named `numbers.txt`. The script contains a subtle bug that causes it to fail under certain conditions, specifically when the input file contains non-numeric values or is empty.

The `bug.sh` file demonstrates the flawed script.  The `bugSolution.sh` file provides a corrected version that handles these edge cases gracefully.  The detailed explanation of the bug and its solution can be found in the bug content section.

## Bug Description:

The original script fails to properly handle non-numeric input, leading to unexpected results or errors. Additionally, if the input file is empty, the script will incorrectly report 0 as the largest number.