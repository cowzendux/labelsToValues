* Encoding: UTF-8.
* Encoding: .
* labelsToValues
* Python function to create a new variable equal to the labels of another variable
* by Jamie DeCoster

**** usage: labelsToValues(labelVar, valueVar)
**** "labelVar" is the name of a variable with numeric indicators attached to values.
**** "valueVar" is the name of a string variable that you want to contain the value labels
*    corresponding to the labelVar values for each case.

BEGIN PROGRAM PYTHON3.

import spss
         
def labelsToValues(labelVar, valueVar):
    with spss.DataStep():
        dataset = spss.Dataset(name="*")
        variableList = dataset.varlist
        variable = variableList[labelVar]
        labels = iter(variable.valueLabels.data.items())
        
    for val, valLab in labels:
        submitstring = "if ({0}={2}) {1}='{3}'.".format(labelVar, valueVar, val, valLab)
        spss.Submit(submitstring)
   
    spss.Submit("execute.")
end program python.


*********
* Version History
*********
* 2023-02-16 Created
