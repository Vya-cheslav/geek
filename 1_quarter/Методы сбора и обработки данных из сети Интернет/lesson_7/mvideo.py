from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome()
driver.get('https://www.mvideo.ru/')

assert "М.Видео" in driver.title

button = driver.find_elements_by_xpath('//a[@class="next-btn sel-hits-button-next"]')[1]

time.sleep(1)
button.click()