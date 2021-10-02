from pprint import pprint
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017/")

db=client["SUNRISE_HOSPITAL"]
my_collection= db["DENTAL"]
patient_record = {
    "Beneficiary Name" : "BASIL ALIAS",
    "Age"  : 23,
    "Sex"  : "M",
    "SSN:" : 587766944756,
    "Insurance ID" : 357283682882,
    "Treatment" : "Root Canal"
}
my_collection.insert_one(patient_record)
print("BENEFICIARY DETAILS")
for data in my_collection.find():
    pprint(data)
