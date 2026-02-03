## What is FOREIGN KEY?

Foreign key ek column hota hai jo dusri table ke PRIMARY KEY se linked hota hai.
Iska use data consistency maintain karne ke liye hota hai.


## Basic FOREIGN KEY Syntax

FOREIGN KEY (column_name)
REFERENCES parent_table(primary_key_column);

## Example: City & Person (Most Common Lab Example)
    Parent Table (City)