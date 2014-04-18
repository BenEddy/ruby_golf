# Hole 5: SQLiteLite

For this Hole, you'll implement a super lightweight version of SQL called BestQL. BestQL only support `SELECT` statements and `WHERE` clauses.  

Our database is contained in two files. 

The first file is called `users.sql`, and it contains pipe delimited user records.  For example:

```
3|Ben|Seattle,WA|Developer|Dunking Basketballs|
4|Kyle|Longmont,CO|Developer|High Kicks|
5|Cransy|New York,NY|Solutioneer||
```

Unfortunately, we don't know which columns contain what information. Luckily, we have a second file called `schema.sql` which defines the mappings. An example schema looks like:
```
id
name
birthplace
job_title
special_skills
```
The schema tells us the order of the columns. In this case, the first user has an ID of 3, is named Ben, and was born in Seattle. 

### Issuing queries

We can issue queries to retrieve User records, which are returned as an array of hashes.  For example:

```Ruby
schema = File.open("schema.sql")
users = File.open("users.sql")

HoleFive.play(schema: schema, users: users, query: "SELECT * from users;")

# => 
[
  {id: "3", name: "Ben", birthplace: "Seattle,WA", job_title: "Developer", special_skills: "Dunking Basketballs"},
  {id: "4", name: "Kyle", birthplace: "Longmont,CO", job_title: "Developer", special_skills: "High Kicks"},
  {id: "5", name: "Cransy", birthplace: "New York,NY", job_title: "Solutioneer", special_skills: ""},  
]
```

We can specify a subset of attributes separated by commas: 
```Ruby
HoleFive.play(schema: schema, users: users, query: "SELECT id, name from users;")

# => 
[
  {id: "3", name: "Ben"},
  {id: "4", name: "Kyle"},
  {id: "5", name: "Cransy"},  
]
```

And lastly, we can provide simple conditions for our selects:
```Ruby
HoleFive.play(schema: schema, users: users, query: "SELECT * from users WHERE name='Kyle';")

# => 
[
  {id: "4", name: "Kyle", birthplace: "Longmont,CO", job_title: "Developer", special_skills: "High Kicks"},
]

HoleFive.play(schema: schema, users: users, query: "SELECT id from users WHERE name='Kyle' OR name='Cransy';")

# => 
[
  {id: "4"},
  {id: "5"}
]

HoleFive.play(schema: schema, users: users, query: "SELECT name from users WHERE job_title='Developer' AND birthplace='Seattle,WA';")

# => 
[
  {name: "Ben"}
]
```
