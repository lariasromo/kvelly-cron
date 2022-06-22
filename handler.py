import requests, os

i=1
while 'URL' + str(i) in os.environ:
    url = os.environ.get('URL' + str(i))
    response = requests.get(url).text

    print(response)
    i += 1