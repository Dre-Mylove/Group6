import regex as re
import os
from datetime import datetime
import csv
from bs4 import BeautifulSoup
import requests
import pandas as pd

start = datetime.now()

#json directory helper function
def writeJSON():
    outname = 'CarInfoFile.json'

    outdir = '/Users/zeebr/source/repos/lazyCarBack'
    if not os.path.exists(outdir):
        os.mkdir(outdir)

    fullname = os.path.join(outdir, outname)

    return fullname

##URL = "https://www.mbofreno.com/new-inventory/index.htm?search=&model=C-Class&gvBodyStyle=Sedan"

#link we are scraping from
URL = "https://www.cars.com/shopping/results/?list_price_max=&makes[]=ford&maximum_distance=500&models[]=ford-mustang_mach_e&page=1&page_size=200&stock_type=new&zip=89502"

print('Connecting to cars.com...')
#using bs to scrape
page = requests.get(URL).text
parse = BeautifulSoup(page, 'html.parser')


#dealer finder code
print('Processing dealers...')
dClass = parse.find_all('div', {'class' : 'dealer-name'})
dline = [dClass.get_text() for dClass in dClass]

found_dealer = []

for line in dline:
    m = re.search(r'\b\w[a-zA-Z\s]*\b', line)
    if m:
        found_dealer.append(m.group(0))


#year,brand,model finder code
print('Processing year, brand and model...')
hClass = parse.find_all('h2', {'class' : 'title'})
hline = [hClass.get_text() for hClass in hClass]

found_year = []
found_brand = []
found_models = []

for line in hline:
    #using reg expressions, we sort the scraped data and put in respective array
    y = re.search(r'^\d{4}\ ', line)
    b = re.search(r' [A-Za-z]* ', line)
    m = re.search(r'[a-z]\K [a-zA-Z\s\-]*', line)
    if y:
        found_year.append(y.group(0))
    if b:
        found_brand.append(b.group(0))
    if m:
        found_models.append(m.group(0))


#price finder code
print('Processing prices...')
spanClass = parse.find_all('span', {'class' : 'primary-price'})
lines = [spanClass.get_text() for spanClass in spanClass]

found_prices = []

for line in lines:
    m = re.search(r'\$\d{2},\d{3}|\b\w+ \w+\b', line)
    if m:
        found_prices.append(m.group(0))

#opening new csv file to write
with open( 'CarInfoFile.csv', 'w', newline='') as csvfile:
    writer = csv.writer(csvfile, delimiter=',', lineterminator='\n')

#creating dataframe for csv & json
df_found_dealers = pd.DataFrame({'Dealer' : found_dealer, 'Year' : found_year, 'Brand' : found_brand, 'Model' : found_models, 'Price' : found_prices})

df_found_dealers.to_csv('CarInfoFile.csv', index=False)
print('\nCSV Completed.')
#uses json helper function to write to python with flask folder
df_found_dealers.to_json(writeJSON(), orient='table')
print('JSON Completed.')

#execution time code
end = datetime.now()
td = (end - start).total_seconds()
print(f'\nTime Elapsed: {td:.02f}s')