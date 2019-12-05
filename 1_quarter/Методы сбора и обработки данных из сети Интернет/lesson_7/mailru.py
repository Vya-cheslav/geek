from selenium import webdriver
from selenium.webdriver.common.keys import Keys

import time

driver = webdriver.Chrome()
driver.get('https://mail.ru')

elem = driver.find_element_by_id("mailbox:login")
elem.send_keys("маил")
elem.send_keys(Keys.RETURN)
time.sleep(1)
elem = driver.find_element_by_id("mailbox:password")
elem.send_keys("пароль")

elem.send_keys(Keys.RETURN)

#Здесь задержка что б получить смс и сработала авторизация
time.sleep(20)

driver.get('https://e.mail.ru/inbox/?back=1&afterReload=1')
# а зждесь задержка только для того что драйвер не ждет загрузки страницы
time.sleep(2)

mails = driver.find_elements_by_xpath('//div[@class=\'layout__main-frame\']//a')

item = 0
for mail in mails:
    item +=1
    lmail = mail.text.split('\n')
    print(f'Письмо пришло от "{lmail[0]}", с темой "{lmail[1]}", дата и время письма "{lmail[2]}"')

