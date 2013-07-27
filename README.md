csv2xlsx
========

Take your CSVs and shove 'em!...into an Excel file...

### Usage

```
csv2xlsx new_excel_file.xlsx file1.csv file2.csv [...]
```

This creates an Excel file called `new_excel_file.xlsx` with each CSV file's contents in its own sheet.  The sheets are named the same as the CSV filename, e.g. the first sheet is named `file1`.

### Thanks To axlsx

All I did was wrap a loop around this awesome library: http://github.com/randym/axlsx

### Copyright and License

Copyright (c) 2013, Ryan Duryea.

This project is licensed under the [MIT License](LICENSE).

