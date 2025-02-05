# config
This function takes in input the map of maps (map of resources) and returns a map with following keys.

**type(string)** 

type will return a map with "resources" and "mode" key
- "resources" will have array of resources filtered by the type given in
  the input parameter.
- "mode" key will have a function and can be further invoked with a parameter(string)
  to return a map with key "resources" (filtered by mode given in the input)


**mode(string)**

mode will return a map with "resources" and "address" key
- "resources" will have array of resources filtered by the mode given in
  the input parameter.
- "address" key will have a function and can be further invoked with a parameter(string)
  to return a map with key "resources" (filtered by address given in the input)

**name(string)**

name will have "resources" key
- "resources" will have array of resources filtered by name given in the
  input parameter.

**address(string)**

address will have "resources" key 
    - "resources" will have array of resources filtered by address given in the 
input parameter.


## Sentinel Module
This function is contained in the [tfresources.sentinel](../tfresources.sentinel) module.

## Declaration
`func config(resources)`

## Arguments
* **resources**: map of maps(resources) in which the filtering will work.

## Common Functions Used
None

## What It Returns
This function returns the map with keys described above.

## What It Prints
This function does not print anything.

## Examples
Here are some examples of calling this function, assuming that the tfresources.sentinel file that contains it has been imported with the alias `tf`:
```
resources = tf.config(tfconfig.resources).type(const.resource_aws_cloudtrail).resources
```