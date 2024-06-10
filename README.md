# labelsToValues
SPSS Python macro to create a new variable equal to the labels of another variable

## Usage
**labelsToValues(labelVar, valueVar)**
* "labelVar" is the name of a variable with numeric indicators attached to values.
* "valueVar" is the name of a string variable that you want to contain the value labels corresponding to the labelVar values for each case.

## Example
**labelsToValues(labelVar = "Race",    
valueVar = "RaceValues")**
* This would create a new string variable in the data set called "RaceValues" where the value for each case would be the label corresponding to the value of the "Race" variable.
