# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import HtmlResponse
from jobparser.items import JobparserItem

class SjruSpider(scrapy.Spider):
    name = 'sjru'
    allowed_domains = []
    start_urls = ['https://www.superjob.ru/vacancy/search/?keywords=python&geo%5Bc%5D%5B0%5D=1']

    def parse(self, response:HtmlResponse):
        next_page = response.css('div._3syPg div._2g1F- a.icMQ_::attr(href)').extract_first()
        yield response.follow(next_page, callback=self.parse)

        vacansy_items = response.css('div._3syPg div._2g1F- a.icMQ_::attr(href)').extract()
        for link in vacansy_items:
            if '/clients/' in link:
                continue
            print(f'получен link {link}')
            yield response.follow(link, callback=self.vacansy_parse)

    def vacansy_parse(self, response: HtmlResponse):
        name = response.xpath("//h1[@class='_3mfro rFbjy s1nFK _2JVkc']/text()").extract_first()
        salary = response.xpath('//span[@class=\'_3mfro _2Wp8I ZON4b PlM3e _2JVkc\']/span/text()').extract()
        data = response._url

        if len(salary) in [2,6]:
            salary = ''.join(response.xpath('//span[@class=\'_3mfro _2Wp8I ZON4b PlM3e _2JVkc\']/span/text()').extract())
        else:
            salary = ''.join(response.xpath('//span[@class=\'_3mfro _2Wp8I ZON4b PlM3e _2JVkc\']/text()').extract())

        print(name, salary)
        yield JobparserItem(name=name, salary=salary, data=data)
