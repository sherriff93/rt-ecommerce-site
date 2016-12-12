SQL Readme

Here is a list of items explaining how "create_database.sql" interacted with the website:

+ Products page:
    + Contents of the products table would be displayed in styled divs on the products page, each linking to an order page.
    + Clicking an item group in the left menu would send a variable via GET (Through the URL), so that only that item type would be displayed from the database.
+ "Sign Up" page form:
    + Password field was added.
    + Date was forced into "dd/mm/yyyy" format, validated upon form submission, then transformed into "yyyy-mm-dd" format for the database.
    + Email was checked against the database to see if already in use.
+ Orders:
    + User was prompted to log in to their account when they click an item to make an order.
    + The inputted email & password were checked against the database. If correct, the user could select a payment option and submit.
    + Order was then placed into the database, corresponding to the right user, address and product.