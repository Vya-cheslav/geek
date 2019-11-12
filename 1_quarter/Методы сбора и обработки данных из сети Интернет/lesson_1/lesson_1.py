import requests

user = 'Vya-cheslav'
token = '1ce98717d1add4a594fa9e1aeff609a1fe88f523'

headers = {'Authorization': f'token {token}'}

'''login = requests.get('https://api.github.com/user', headers=headers)
'''

login = requests.get('https://api.github.com/user/repos', headers=headers)

repo = []

js = login.json()

if len(js) != 0:
    print("Список репозиториев пользователя:")
else:
    print("У пользователя нет репозиториев.")

for js_i in js:
    #Отобраны репозитории в котрых пользователь является владельцем
    if  js_i['owner']['login'] == user:
        repo.append(js_i['name'])
        print(f"{len(repo)}. {js_i['name']}")

