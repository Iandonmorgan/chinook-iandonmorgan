# Chinook

This project is learning practice for SQL. Instruction on the queries created for this project can be found here: https://github.com/nashville-software-school/bangazon-llc/blob/master/book-5-data/chapters/CHINOOK.md

Student: Landon Morgan
GitHub: https://github.com/iandonmorgan

## Project Setup

* Clone down the repo and `cd` into it

* Open `Chinook_Sqlite.sqlite` file using TablePlus, and open any of the following queries with their corresponding instructions used to create, below:

    * `non_usa_customers.sql`: Query showing Customers who are not in the US. The resultant table shows the customer's full name, customer ID and country.

    * `brazil_customers.sql`: Query only showing the Customers from Brazil.

    * `brazil_customers_invoices.sql`: Query showing the Invoices of customers who are from Brazil. The resultant table shows the customer's full name, Invoice ID, Date of the invoice and billing country.

    * `sales_agents.sql`: Query showing only the Employees who are Sales Agents.

    * `unique_invoice_countries.sql`: Query showing a unique/distinct list of billing countries from the Invoice table.

    * `sales_agent_invoices.sql`: Query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

    * `invoice_totals.sql`: Query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

    * `total_invoices_{year}.sql`: Query showing how many Invoices there were in 2009 and 2011.

    * `total_sales_{year}.sql`: Query shows the respective total sales for each of those years.

    * `invoice_37_line_item_count.sql`: Query that COUNTs the number of line items in InvoiceLine Table with an InvoiceId of 37.

    * `line_items_per_invoice.sql`: Query that COUNTs the number of line items for each Invoice.

    * `line_item_track.sql`: Query that includes the purchased track name with each invoice line item.

    * `line_item_track_artist.sql`: Query that includes the purchased track name AND artist name with each invoice line item.

    * `country_invoices.sql`: Query that shows the # of invoices per country.

    * `playlists_track_count.sql`: Query that shows the total number of tracks in each playlist.

    * `tracks_no_id.sql`: Query that shows all the Tracks, but displays no IDs. Includes the Album name, Media type and Genre.

    * `invoices_line_item_count.sql`: Query that shows all Invoices but includes the # of invoice line items.

    * `sales_agent_total_sales.sql`: Query that shows total sales made by each sales agent.

    * `top_2009_agent.sql`: Query to show the sales agent who made the most in sales in 2009, and that total.

    * `top_agent.sql`: Query to show sales agent with the most in sales over-all.

    * `sales_agent_customer_count.sql`: Query that shows the count of customers assigned to each sales agent.

    * `sales_per_country.sql`: Query that shows the total sales per country.

    * `top_country.sql`: Query to show the country with customers who spent the most.

    * `top_2013_track.sql`: Query that shows the most purchased track of 2013.

    * `top_5_tracks.sql`: Query that shows the top 5 most purchased tracks over-all.

    * `top_3_artists.sql`: Query that shows the top 3 best selling artists.

    <!-- * `top_media_type.sql`: Provide a query that shows the most purchased Media Type. -->