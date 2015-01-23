d# run_analysis
The script have two functions, the first one is just for "translate" the number of activy to a real activity name. The other function is the principal.

In run_analysis function the fisrt thing I do is read the data, create the merge data set between train and test info.

I create a cursor with the index values from mean and std measurement.

I use the cursor created to subset just the column we need.

In the next step, we "translate" the colnames with the first function 'translate'.

Extract the unique colnames, with that we can get the mean of every column with the same names.

Variables:

tst: DataSet test set
trt: DataSet train set
merged: DataSet merged between tst and trt
columns: Columns included in mean std measurements.
sub: Subset from merged
tstl: number for labels test
tstLable: tstl filtered
a: cursor with headers
namesL: cursor with unique colnames
respuesta: Final result
