Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


source contains source definitions
`base` contains `ephemeral` base models that serve as wrappers around source models to define column names and data types where necessary
 `ods` represents an Operational Data Store (ODS), i.e. a mostly normalized view of the data. These models may contain more columns than we may choose to publish to the dimensional data warehouse, but don't contain any reporting models.
- `wh` represents the Dimensional Data Warehouse (WH). These models use a star schema methodology made up of fact (`fct_*`) and dimension (`dim_*`) tables. 
