A DBT project, managing data models using DBT and deploying them on Snowflake. The sample data is pulled from Snowflake sample data, and the following data models follow a star schema, showcasing fact and dim tables.
- "source" contains source definitions for pulling from snowflake example schema
- "data" contains base models that serve as wrappers around source models to define column names and data types 
- "staging" contains normalized view of the data.
- "tables" represent dimensional warehouse.
