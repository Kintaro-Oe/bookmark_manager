# Bookmark Manager

## User stories

```
As a user
So that I can quickly go to the web sites I regularly visit
I would like to see a list of bookmarks
```

## Domain Model

![Domain model](https://github.com/jo-quin/bookmark_manager/blob/master/domain_model.png)


## Database setup

Install and connect to `psql`:
```
$ brew install postgresql
$ psql postgres #connects to postgres server
```

Create the `bookmark_manager` database:
```
CREATE DATABASE bookmark_manager;

# Connect to the new database with:
\c bookmark_manager

# To setup the appropriate tables run the SQL script in `db/migrations` folder by using the command below:
Note that you should edit the ~ in the path to match your cloned location.
\i ~/bookmark_manager/db/migrations/01_create_bookmarks_table.sql
```
