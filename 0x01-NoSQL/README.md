# :book: 0x01. NoSQL - MongoDB.
## :page_with_curl: Topics Covered.
1. NoSQL database.
2. MongoDB.

# :computer: Tasks.

## [0. List all databases](0-list_databases)
### :page_with_curl: Task requirements.
Write a script that lists all databases in MongoDB.
```
guillaume@ubuntu:~/0x01$ cat 0-list_databases | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
admin        0.000GB
config       0.000GB
local        0.000GB
logs         0.005GB
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 0-list_databases
chmod +x 0-list_databases

# Test
cat 0-list_databases | mongo
```

### :heavy_check_mark: Solution
> [:point_right: 0-list_databases](0-list_databases)


## [1. Create a database](1-use_or_create_database)
### :page_with_curl: Task requirements.
Write a script that creates or uses the database my_db:
```
guillaume@ubuntu:~/0x01$ cat 0-list_databases | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
admin        0.000GB
config       0.000GB
local        0.000GB
logs         0.005GB
bye
guillaume@ubuntu:~/0x01$
guillaume@ubuntu:~/0x01$ cat 1-use_or_create_database | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
switched to db my_db
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 1-use_or_create_database
chmod +x 1-use_or_create_database

# Test
cat 1-use_or_create_database | mongo
```

### :heavy_check_mark: Solution
> [:point_right: 1-use_or_create_database](1-use_or_create_database)


## [2. Insert document](2-insert)
### :page_with_curl: Task requirements.
Write a script that inserts a document in the collection school:

*    The document must have one attribute name with value “Holberton school”
*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 2-insert | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nInserted" : 1 })
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 2-insert
chmod +x 2-insert

# Tests
cat 2-insert | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 2-insert](2-insert)


## [3. All documents](3-all)
### :page_with_curl: Task requirements.
Write a script that lists all documents in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 3-all | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 3-all
chmod +x 3-all

#Test
cat 3-all | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 3-all](3-all)


## [4. All matches](4-match)
### :page_with_curl: Task requirements.
Write a script that lists all documents with name="Holberton school" in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 4-match
chmod +x 4-match
cat 4-main.sql | mysql -uroot -p holberton 

# Test
cat 4-match | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 4-match](4-match)


## [5. Count](5-count)
### :page_with_curl: Task requirements.
Write a script that displays the number of documents in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 5-count | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
1
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 5-count
chmod +x 5-count
cat 5-init.sql | mysql -uroot -p holberton 

# Tests
touch 5-init.sql
chmod +x 5-init.sql
cat 5-count | mysql -uroot -p holberton 

```

### :heavy_check_mark: Solution
> [:point_right: 5-count](5-count)


## [6. Update](6-update)
### :page_with_curl: Task requirements.
Write a script that adds a new attribute to a document in the collection school:

*    The script should update only document with name="Holberton school" (all of them)
*    The update should add the attribute address with the value “972 Mission street”
*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 6-update | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
bye
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school", "address" : "972 Mission street" }
bye
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 6-update
chmod +x 6-update
cat 6-init.sql | mysql -uroot -p holberton

# Tests
touch 6-init.sql
chmod +x 6-init.sql
cat 6-update | mysql -uroot -p holberton

# Lint
pycodestyle 6-update
mypy 6-update
```

### :heavy_check_mark: Solution
> [:point_right: 5-count](5-count)


## [7. Delete by match](7-delete)
### :page_with_curl: Task requirements.
Write a script that deletes all documents with name="Holberton school" in the collection school:

*    The database name will be passed as option of mongo command

```
guillaume@ubuntu:~/0x01$ cat 7-delete | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "acknowledged" : true, "deletedCount" : 1 }
bye
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
bye
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 7-delete
chmod +x 7-delete

# Tests
cat 7-delete | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 7-init.sql](7-delete)


## [8. List all documents in Python](8-all.py)
### :page_with_curl: Task requirements.
Write a Python function that lists all documents in a collection:

*    Prototype: def list_all(mongo_collection):
*    Return an empty list if no document in the collection
*    mongo_collection will be the pymongo collection object
```
guillaume@ubuntu:~/0x01$ cat 8-main.py
#!/usr/bin/env python3
""" 8-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {}".format(school.get('_id'), school.get('name')))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./8-main.py
[5a8f60cfd4321e1403ba7ab9] Holberton school
[5a8f60cfd4321e1403ba7aba] UCSD
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 8-all.py
chmod +x 8-all.py

# Test
touch 8-main.py
chmod +x 8-main.py
./8-main.py

# Lint
pycodestyle 8-main.py
```

### :heavy_check_mark: Solution
> [:point_right: 8-all.py](8-all.py)


## [9. Insert a document in Python](9-insert_school.py)
### :page_with_curl: Task requirements.
Write a Python function that inserts a new document in a collection based on kwargs:

*    Prototype: def insert_school(mongo_collection, **kwargs):
*    mongo_collection will be the pymongo collection object
*    Returns the new _id

```
guillaume@ubuntu:~/0x01$ cat 9-main.py
#!/usr/bin/env python3
""" 9-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
insert_school = __import__('9-insert_school').insert_school

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    new_school_id = insert_school(school_collection, name="UCSF", address="505 Parnassus Ave")
    print("New school created: {}".format(new_school_id))

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('address', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./9-main.py
New school created: 5a8f60cfd4321e1403ba7abb
[5a8f60cfd4321e1403ba7ab9] Holberton school
[5a8f60cfd4321e1403ba7aba] UCSD
[5a8f60cfd4321e1403ba7abb] UCSF 505 Parnassus Ave
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 9-insert_school.py
chmod +x 9-insert_school.py

# Test
touch 9-main.py
chmod +x 9-main.py
./9-main.py

# Lint
pycodestyle 9-main.py
```

### :heavy_check_mark: Solution
> [:point_right: 9-insert_school.py](9-insert_school.py)


## [10. Change school topics](10-update_topics.py)
### :page_with_curl: Task requirements.
Write a Python function that changes all topics of a school document based on the name:

*    Prototype: def update_topics(mongo_collection, name, topics):
*    mongo_collection will be the pymongo collection object
*    name (string) will be the school name to update
*    topics (list of strings) will be the list of topics approached in the school
```
guillaume@ubuntu:~/0x01$ cat 10-main.py
#!/usr/bin/env python3
""" 10-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
update_topics = __import__('10-update_topics').update_topics

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    update_topics(school_collection, "Holberton school", ["Sys admin", "AI", "Algorithm"])

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

    update_topics(school_collection, "Holberton school", ["iOS"])

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./10-main.py
[5a8f60cfd4321e1403ba7abb] UCSF 
[5a8f60cfd4321e1403ba7aba] UCSD 
[5a8f60cfd4321e1403ba7ab9] Holberton school ['Sys admin', 'AI', 'Algorithm']
[5a8f60cfd4321e1403ba7abb] UCSF 
[5a8f60cfd4321e1403ba7aba] UCSD 
[5a8f60cfd4321e1403ba7ab9] Holberton school ['iOS']
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 10-update_topics.py
chmod +x 10-update_topics.py

# Test
touch 10-main.py
chmod +x 10-main.py
./10-main.py

# Lint
pycodestyle 10-update_topics.py
```

### :heavy_check_mark: Solution
> [:point_right: 10-update_topics.py](10-update_topics.py)


## [11. Where can I learn Python?](11-schools_by_topic.py)
### :page_with_curl: Task requirements.
Write a Python function that returns the list of school having a specific topic:

*    Prototype: def schools_by_topic(mongo_collection, topic):
*    mongo_collection will be the pymongo collection object
*    topic (string) will be topic searched
```
guillaume@ubuntu:~/0x01$ cat 11-main.py
#!/usr/bin/env python3
""" 11-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
insert_school = __import__('9-insert_school').insert_school
schools_by_topic = __import__('11-schools_by_topic').schools_by_topic

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school

    j_schools = [
        { 'name': "Holberton school", 'topics': ["Algo", "C", "Python", "React"]},
        { 'name': "UCSF", 'topics': ["Algo", "MongoDB"]},
        { 'name': "UCLA", 'topics': ["C", "Python"]},
        { 'name': "UCSD", 'topics': ["Cassandra"]},
        { 'name': "Stanford", 'topics': ["C", "React", "Javascript"]}
    ]
    for j_school in j_schools:
        insert_school(school_collection, **j_school)

    schools = schools_by_topic(school_collection, "Python")
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./11-main.py
[5a90731fd4321e1e5a3f53e3] Holberton school ['Algo', 'C', 'Python', 'React']
[5a90731fd4321e1e5a3f53e5] UCLA ['C', 'Python']
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 11-schools_by_topic.py
chmod +x 11-schools_by_topic.py

# Tests
touch 11-main.py
chmod +x 11-main.py

# Lint
pycodestyle 11-schools_by_topic.py
```

### :heavy_check_mark: Solution
> [:point_right: 11-schools_by_topic.py](11-schools_by_topic.py)


## [12. Log stats](12-log_stats.py)
### :page_with_curl: Task requirements.
Write a Python script that provides some stats about Nginx logs stored in MongoDB:

*    Database: logs
*    Collection: nginx
*    Display (same as the example):
*    *    first line: x logs where x is the number of documents in this collection
*    *    second line: Methods:
*    *    5 lines with the number of documents with the method = ["GET", "POST", "PUT", "PATCH", "DELETE"] in this order (see example below - warning: it’s a tabulation before each line)
*    *    one line with the number of documents with:
*    *   *  method=GET
*    *   *  path=/status

You can use this dump as data sample: dump.zip

The output of your script must be exactly the same as the example
```
guillaume@ubuntu:~/0x01$ curl -o dump.zip -s "https://s3.amazonaws.com/intranet-projects-files/holbertonschool-webstack/411/dump.zip"
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ unzip dump.zip
Archive:  dump.zip
   creating: dump/
   creating: dump/logs/
  inflating: dump/logs/nginx.metadata.json  
  inflating: dump/logs/nginx.bson    
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ mongorestore dump
2018-02-23T20:12:37.807+0000    preparing collections to restore from
2018-02-23T20:12:37.816+0000    reading metadata for logs.nginx from dump/logs/nginx.metadata.json
2018-02-23T20:12:37.825+0000    restoring logs.nginx from dump/logs/nginx.bson
2018-02-23T20:12:40.804+0000    [##......................]  logs.nginx  1.21MB/13.4MB  (9.0%)
2018-02-23T20:12:43.803+0000    [#####...................]  logs.nginx  2.88MB/13.4MB  (21.4%)
2018-02-23T20:12:46.803+0000    [#######.................]  logs.nginx  4.22MB/13.4MB  (31.4%)
2018-02-23T20:12:49.803+0000    [##########..............]  logs.nginx  5.73MB/13.4MB  (42.7%)
2018-02-23T20:12:52.803+0000    [############............]  logs.nginx  7.23MB/13.4MB  (53.8%)
2018-02-23T20:12:55.803+0000    [###############.........]  logs.nginx  8.53MB/13.4MB  (63.5%)
2018-02-23T20:12:58.803+0000    [#################.......]  logs.nginx  10.1MB/13.4MB  (74.9%)
2018-02-23T20:13:01.803+0000    [####################....]  logs.nginx  11.3MB/13.4MB  (83.9%)
2018-02-23T20:13:04.803+0000    [######################..]  logs.nginx  12.8MB/13.4MB  (94.9%)
2018-02-23T20:13:06.228+0000    [########################]  logs.nginx  13.4MB/13.4MB  (100.0%)
2018-02-23T20:13:06.230+0000    no indexes to restore
2018-02-23T20:13:06.231+0000    finished restoring logs.nginx (94778 documents)
2018-02-23T20:13:06.232+0000    done
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./12-log_stats.py 
94778 logs
Methods:
    method GET: 93842
    method POST: 229
    method PUT: 0
    method PATCH: 0
    method DELETE: 0
47415 status check
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 12-log_stats.py
chmod +x 12-log_stats.py

# Test
./12-log_stats.py 
```

### :heavy_check_mark: Solution
> [:point_right: 12-log_stats.py](12-log_stats.py)


## [13. Regex filter](100-find)
### :page_with_curl: Task requirements.
Write a script that lists all documents with name starting by Holberton in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 100-find | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a90731fd4321e1e5a3f53e3"), "name" : "Holberton school" }
{ "_id" : ObjectId("5a90731fd4321e1e5a3f53e3"), "name" : "Holberton School" }
{ "_id" : ObjectId("5a90731fd4321e1e5a3f53e3"), "name" : "Holberton-school" }
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 100-find
chmod +x 100-find

# Test
cat 100-find | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 100-find](100-find)


## [14. Top students](101-students.py)
### :page_with_curl: Task requirements.
Write a Python function that returns all students sorted by average score:

*    Prototype: def top_students(mongo_collection):
*    mongo_collection will be the pymongo collection object
*    The top must be ordered
*    The average score must be part of each item returns with key = averageScore
```
guillaume@ubuntu:~/0x01$ cat 101-main.py
#!/usr/bin/env python3
""" 101-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
insert_school = __import__('9-insert_school').insert_school
top_students = __import__('101-students').top_students

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    students_collection = client.my_db.students

    j_students = [
        { 'name': "John", 'topics': [{ 'title': "Algo", 'score': 10.3 },{ 'title': "C", 'score': 6.2 }, { 'title': "Python", 'score': 12.1 }]},
        { 'name': "Bob", 'topics': [{ 'title': "Algo", 'score': 5.4 },{ 'title': "C", 'score': 4.9 }, { 'title': "Python", 'score': 7.9 }]},
        { 'name': "Sonia", 'topics': [{ 'title': "Algo", 'score': 14.8 },{ 'title': "C", 'score': 8.8 }, { 'title': "Python", 'score': 15.7 }]},
        { 'name': "Amy", 'topics': [{ 'title': "Algo", 'score': 9.1 },{ 'title': "C", 'score': 14.2 }, { 'title': "Python", 'score': 4.8 }]},
        { 'name': "Julia", 'topics': [{ 'title': "Algo", 'score': 10.5 },{ 'title': "C", 'score': 10.2 }, { 'title': "Python", 'score': 10.1 }]}
    ]
    for j_student in j_students:
        insert_school(students_collection, **j_student)

    students = list_all(students_collection)
    for student in students:
        print("[{}] {} - {}".format(student.get('_id'), student.get('name'), student.get('topics')))

    top_students = top_students(students_collection)
    for student in top_students:
        print("[{}] {} => {}".format(student.get('_id'), student.get('name'), student.get('averageScore')))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./101-main.py
[5a90776bd4321e1ec94fc408] John - [{'title': 'Algo', 'score': 10.3}, {'title': 'C', 'score': 6.2}, {'title': 'Python', 'score': 12.1}]
[5a90776bd4321e1ec94fc409] Bob - [{'title': 'Algo', 'score': 5.4}, {'title': 'C', 'score': 4.9}, {'title': 'Python', 'score': 7.9}]
[5a90776bd4321e1ec94fc40a] Sonia - [{'title': 'Algo', 'score': 14.8}, {'title': 'C', 'score': 8.8}, {'title': 'Python', 'score': 15.7}]
[5a90776bd4321e1ec94fc40b] Amy - [{'title': 'Algo', 'score': 9.1}, {'title': 'C', 'score': 14.2}, {'title': 'Python', 'score': 4.8}]
[5a90776bd4321e1ec94fc40c] Julia - [{'title': 'Algo', 'score': 10.5}, {'title': 'C', 'score': 10.2}, {'title': 'Python', 'score': 10.1}]
[5a90776bd4321e1ec94fc40a] Sonia => 13.1
[5a90776bd4321e1ec94fc40c] Julia => 10.266666666666666
[5a90776bd4321e1ec94fc408] John => 9.533333333333333
[5a90776bd4321e1ec94fc40b] Amy => 9.366666666666665
[5a90776bd4321e1ec94fc409] Bob => 6.066666666666667
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 101-students.py
chmod +x 101-students.py

# Test
touch 101-main.py
chmod +x 101-main.py

# Lint
pycodestyle 101-students.py
```

### :heavy_check_mark: Solution
> [:point_right: 101-students.py](101-students.py)


## [15. Log stats - new version](102-log_stats.py )
### :page_with_curl: Task requirements.
Improve 12-log_stats.py by adding the top 10 of the most present IPs in the collection nginx of the database logs:

*    The IPs top must be sorted (like the example below)
```
guillaume@ubuntu:~/0x01$ ./102-log_stats.py 
94778 logs
Methods:
    method GET: 93842
    method POST: 229
    method PUT: 0
    method PATCH: 0
    method DELETE: 0
47415 status check
IPs:
    172.31.63.67: 15805
    172.31.2.14: 15805
    172.31.29.194: 15805
    69.162.124.230: 529
    64.124.26.109: 408
    64.62.224.29: 217
    34.207.121.61: 183
    47.88.100.4: 166
    45.249.84.250: 160
    216.244.66.228: 150
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 102-log_stats.py 
chmod +x 102-log_stats.py

# Test
./102-log_stats.py
```

### :heavy_check_mark: Solution
> [:point_right: 102-log_stats.py ](102-log_stats.py )


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhatsApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.
