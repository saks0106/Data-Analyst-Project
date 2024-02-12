
# Mexico Toy Factory - Data Analyst Project

Link: https://www.novypro.com/project/mexico-toy-sales-data

## Overview
This project focuses on analyzing and visualizing data related to a toy factory in Mexico. The data is stored in a SQL database, and the analysis and visualization are performed using Power BI. The database contains tables for calendar, inventory, products, sales, and stores.

SQL Database Schema
The SQL database includes the following tables:

1. calendar:

        date_id (int)
        date (date)


2. inventory:

        store_id (int)
        product_id (int)
        stock_count (int)


3. products:

        product_id (int)
        product_name (varchar)
        product_category (varchar)
        product_cost (float)
        product_price (float)

4. sales:

        sales_id (int)
        date (date)
        store_id (int)
        product_id (int)
        units (int)

5. stores:

        store_id (int)
        store_name (varchar)
        store_city (varchar)
        store_location (varchar)
        store_open_date (date)


## Project Files
The project includes the following files:

SQL Files:

    create_tables.sql: SQL script to create tables if they do not exist.

Power BI Files:

    MexicoToyFactory.pbix: Power BI file containing the data model, queries, and visualizations.


## Power BI Visualizations: https://www.novypro.com/project/mexico-toy-sales-data

The Power BI file includes various visualizations and dashboards to provide insights into the toy factory's performance. Key visualizations may include:

    Sales trends over time.
    Inventory levels by product and store.
    Goal Projections
    Profit margins and costs analysis.
    Geographic distribution of stores and sales.
    Executive Report based on Important Key and Metrics
    Product Wise Sales, Profit


## Getting Started
To set up the project, follow these steps:

Execute the create_tables.sql script in your SQL database to create the necessary tables.

Open the MexicoToyFactory.pbix Power BI file using Power BI Desktop.

Refresh the data connections to ensure the latest data is loaded.

Explore the pre-built visualizations and dashboards to gain insights into the Mexico Toy Factory data.


## Contributing
If you wish to contribute to this project or have suggestions for improvement, please fork the repository and submit a pull request.


