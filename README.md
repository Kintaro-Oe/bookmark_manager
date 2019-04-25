# Bookmark Manager

## User stories

```
As a user
So that I can quickly go to the web sites I regularly visit
I would like to see a list of bookmarks

As a user
So that I can keep track of new websites
I would like to add new bookmarks
```

## Domain Model

![Domain model](https://github.com/jo-quin/bookmark_manager/blob/master/domain_model.png)

## Database setup - How to install and create (for Mac)

Install and connect to `psql`:

Open up terminal

`brew install postgresql`
`psql postgres` #connects to postgres server
`CREATE DATABASE "your_user_name_here";` This step allows you to add your computers user name allowing a shorter `psql` command to connect in future


In command line, type the following:

1. `psql` # opens your user database
2. `CREATE DATABASE bookmark_manager;` # create a database
3. `CREATE DATABASE bookmark_manager_test;` # create a database for testing
4. `\c bookmark_manager;` # connect to the bookmark_manager database
5. `Access 01_create_bookmarks_table.sql` located within db/migrations/. Run the query within both databases

```bash
# To setup the appropriate tables run the SQL script in `db/migrations` folder by using the command below:
Note that you should edit the ~ in the path to match your cloned location.
bookmark_manager=# \i ~/bookmark_manager/db/migrations/01_create_bookmarks_table.sql
```

## How to launch the server for the app

Enter `rackup -p 3456` into command line to start the server
Enter `CTRL+C` to close the server

## How to view the app

Enter url localhost:2345/bookmarks in your browser to view the app
