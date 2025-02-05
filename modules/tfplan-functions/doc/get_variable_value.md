# get_variable_value
This function gets the variable value from the `variables` attribute of the [tfplan/v2](https://www.terraform.io/docs/cloud/sentinel/import/tfplan-v2.html) import.

## Sentinel Module
This function is contained in the [tfplan-functions.sentinel](../tfplan-functions.sentinel) module.

## Declaration
`get_variable_value = func(name)`

## Arguments
* **name**: the name of variable to find, given as a string.

## Common Functions Used
None

## What It Returns
This function returns the value of the variable if its found. Else it returns `null`.

## What It Prints
This function does not print anything.

## Examples
Here are some examples of calling this function, assuming that the tfplan-functions.sentinel file that contains it has been imported with the alias `plan`:
```
is_enabled = plan.get_variable_value("enabled")
```