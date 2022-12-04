from flask import Flask
from sqlalchemy import Column, Integer, String
from sqlalchemy import create_engine
engine =  create_engine ()
from sqlalchemy.ext.declarative import declarative_base # def not working, just saving some time
Base = declarative_base

class Cars (Base):
    __tablename__= 'Cars'
    car_id= Column (Integer, primary_key = True)
    vin = Column (String)
    year = Column (Integer)
    brand= Column (String)
    model = Column (String)
    price = Column (Integer) #price is actually a double but idk how to import that
    used = Column (Integer) # this is a boolean, then again idk how to do it
    style_id = Column (Integer) # FK from style table, does this work?
    basic_id = Column (Integer) # same as b4, FK to a diff table

class Basic (Base):
    __tablename__= 'Basic'
    drive_train = Column (String)
    mpg = Column (String)
    stock_num = Column (Integer) # then again, this is a BIGINT or LONG but idk how to do anything thats not int
    transmission = Column (String)
    engine = Column (String)
    fuel_type = Column (Integer) #FK to Fuel_Type table
    mileage = Column (Integer) # then again, big int or long or idk
    external_color = Column (Integer) # FK to the color table, SINCE WE DONT KNOW IF THEY ARE INVENTING NEW FKNG COLORS
    internal_color = Column (Integer) # same as line 29
    basic_id = Column (Integer, primary_key = True)

class Fuel_Type (Base):
    __tablename__= 'Fuel_Type'
fuel_id = Column (Integer, primary_key = True)
fuel_type_name = Column (String)

class Color (Base):
    __tablename__= 'Color'
    color_id = Column (Integer, primary_key = True)
    color_name = Column (String)

class Style (Base):
    __tablename__= 'Style'
    style_id = Column (Integer, primary_key = True)
    style_name = Column (String)


class Car_Features (Base):
    __tablename__= 'Car_Features'
    car_id = Column (Integer, primary_key = True)
    feature_id = Column (Integer, primary_key = True) #here we kinda have a problem, this table has 2 PK cause well, one car can have many features but idk how to code that


class Features (Base):
    __tablename__= 'Features'
    feature_id = Column (Integer)
    feature_name = Column (Integer)

Base.metadata.create_all(engine) # i dont even know what this does


app= Flask (__name__)
@app.route("/")
def home():
    return "Hello Flask!"

