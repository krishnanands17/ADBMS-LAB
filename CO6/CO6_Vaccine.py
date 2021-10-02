from pprint import pprint
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017/")

db=client["COVID-19_VACCINATION"]
my_collection= db["patient"]
patient_records =[
{
    "Beneficiary Name" : "KRISHNANAND S",
    "Age" : 22,
    "Sex" : "M",
    "Vaccine_Name" : "COVISHIELD",
    "Date Of 1st Dose" : "19 jun 2021(Batch No:12365478)",
    "Date Of 2nd Dose" : "12 sep 2021(Batch No:57454545)",
    "Vaccinated By" : "Boby k George",
    "Vaccination At" : "LISSIE HOSPITAL"
},
{
    "Beneficiary Name" : "JAISON JOY",
    "Age" : 22,
    "Sex" : "M",
    "Vaccine_Name" : "COVISHIELD",
    "Date Of 1st Dose" : "25 jun 2021(Batch No:12357478)",
    "Date Of 2nd Dose" : "18 sep 2021(Batch No:65454545)",
    "Vaccinated By" : "Veena Jomy",
    "Vaccination At" : "SUNRISE HOSPITAL"
},
 {
    "Beneficiary Name" : "ATHIRA KP",
    "Age" : 23,
    "Sex" : "F",
    "Vaccine_Name" : "COVAXINE",
    "Date Of 1st Dose" : "19 aug 2021(Batch No:12367892)",
    "Date Of 2nd Dose" : "12 nov 2021(Batch No:57456525)",
    "Vaccinated By" : "Amala V",
    "Vaccination At" : "GENERAL HOSPITAL"
 }
]
my_collection.insert_many(patient_records)
print("VACCINATION DETAILS")
for item in my_collection.find():
    pprint(item)


