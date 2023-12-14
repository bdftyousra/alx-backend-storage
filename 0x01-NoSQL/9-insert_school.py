#!/usr/bin/env python3
'''Module with a function that inserts a new document in a collection.
'''


def insert_school(mongo_collection, **kwargs):
    '''Function that inserts a new document in a collection.
    '''
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
