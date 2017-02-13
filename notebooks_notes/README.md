# Notebook Notes

This is folder, in which you can annotate the notebooks, run the code, etc.

Simply run the file "__nb_copy.sh__" in the _main directory_,
followed by the week number to access the live version of the 
notebook of that week.

```bash
./nb_copy.sh week_number ow_opt
```
For help:

```bash
./nb_copy.sh -h
```

Parameters:
----
- `week_num`: number of the week of the iPython notebook to copy
- `ow_opt': if "y", it will overwrite the notebooks in `nb_copy_path'.



__Note__:

* The __`week_number`__ must be followed by a `0' _if_  the week number is __below 10__.


Example
----
### Getting the help menu of the executable

```
:$ ./nb_copy.sh -h

How to run:    ./nb_copy.sh week_num overwrite_opt
  * week_num: number of the week of the iPython notebook to copy
  * ow_opt: if 'true', it will overwrite the notebooks in 'nb_copy_path'
```

or 

```bash
:$ ./nb_copy.sh

How to run:    ./nb_copy.sh week_num overwrite_opt
  * week_num: number of the week of the iPython notebook to copy
  * ow_opt: if 'true', it will overwrite the notebooks in 'nb_copy_path'
```


### Copying the new directory of "Week 04" (with overwriting)

```bash
:$ ./nb_copy.sh 04 y

git pull
Already up-to-date.
cp  -rp ./notebooks/Week_04 ./notebooks_notes/
jupyter notebook ./notebooks_notes/Week_04/*.ipynb
```

### Copying the new directory of "Week 04" (without overwriting)
In case you had already made some notes on an __existing__ notebook

```bash
:$ ./nb_copy.sh 04

git pull
Already up-to-date.
jupyter notebook ./notebooks_notes/Week_04/*.ipynb
```