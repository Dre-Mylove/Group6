import re
import csv
from bs4 import BeautifulSoup
import requests
import pandas as pd

URL = "https://www.cars.com/shopping/results/?list_price_max=&makes[]=ford&maximum_distance=500&models[]=ford-mustang_mach_e&page=1&page_size=200&stock_type=new&zip=89502"


#URL = "https://www.mbofreno.com/new-inventory/index.htm?search=&model=C-Class&gvBodyStyle=Sedan"
page = requests.get(URL).text
parse = BeautifulSoup(page, 'html.parser')


dClass = parse.find_all('div', {'class' : 'dealer-name'})
dline = [dClass.get_text() for dClass in dClass]

found_dealer = []
for line in dline:
    m = re.search(r'\b\w[a-zA-Z\s]*\b', line)
    if m:
        found_dealer.append(m.group(0))

for dealer in found_dealer:
    print(dealer)

#title finder code
hClass = parse.find_all('h2', {'class' : 'title'})
hline = [hClass.get_text() for hClass in hClass]

found_models = []
for line in hline:
    m = re.search(r'\d{4}\ [a-zA-Z\s\-]*', line)
    if m:
        found_models.append(m.group(0))

for model in found_models:
    print(model)


#price finder code
spanClass = parse.find_all('span', {'class' : 'primary-price'})
lines = [spanClass.get_text() for spanClass in spanClass]

found_prices = []
for line in lines:
    m = re.search(r'\$\d{2},\d{3}|\b\w+ \w+\b', line)
    if m:
        found_prices.append(m.group(0))

for price in found_prices:
    print(price)



with open( 'carInfoFile.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile, delimiter=',', lineterminator='\n')

df_found_dealers = pd.DataFrame({'Dealer' : found_dealer,'Model' : found_models ,'Price' : found_prices})
df_found_dealers.to_csv("CarInfoFile.csv", index= False)
