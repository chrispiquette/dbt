Here is a dbt project I created where I modeled, transformed and published data tables to BigQuery after building on my machine.

[BigQuery Database link](https://console.cloud.google.com/bigquery?ws=!1m4!1m3!3m2!1sproject-cp-2021!2sdbt_data).

### What I did:
1. Setup Python.
2. Setup Visual Studio Code for Windows.
3. Configured dbt-core on my local Windows machine.
4. Added the YAML configuration file "profiles.yml" to be able to connect my machine to BigQuery.
5. Created a SQL data model in this repository, and created a second model dependent on the first.
6. Ran dbt-core and published to BigQuery.
7. Modeled users data (see users file), created a Macro file (macros/general.sql), and inherited the macro for a country_conversion (see users_country_conversion)
8. Ensured data passed dbt tests.
9. Quality-assured data in BigQuery. Example of final table, with "country_name" created from a Macro:
[Users by Country Table, Utilizing a Macro](https://github.com/chrispiquette/dbt/blob/main/users_country_conversion_table.png)

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
