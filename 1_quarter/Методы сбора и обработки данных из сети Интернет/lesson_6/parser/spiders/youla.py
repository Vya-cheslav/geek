# -*- coding: utf-8 -*-
import scrapy
from scrapy.http import HtmlResponse
from avitoparser.items import AvitoparserItem
from scrapy.loader import ItemLoader

class YoulaSpider(scrapy.Spider):
    name = 'youla'
    allowed_domains = ['youla.ru']
    start_urls = ['https://youla.ru/sankt-peterburg?q=%D0%B0%D0%B2%D1%82%D0%BE%D0%BC%D0%BE%D0%B1%D0%B8%D0%BB%D1%8C']

    def parse(self, response:HtmlResponse):
        ads_links = response.xpath('//main[@class=\'main main_container col-xs-12 col-sm-9\']//li[@class="product_item"]/a/@href').extract()
        for link in ads_links:
            yield response.follow(link, callback=self.parse_ads)

    def parse_ads(self, response: HtmlResponse):
        loader = ItemLoader(item=AvitoparserItem(), response=response)
        loader.add_css('title','div.AdvertCard_advertTitle__1S1Ak::text')
        loader.add_xpath('photos','//figure[@class=\'PhotoGallery_photo__36e_r\']//source/@srcset')
        loader.add_xpath('price', '//div[@class=\'AdvertCard_price__3dDCr AdvertCard_topAdvertHeaderCommon__2zUjb rouble\']/text()')
        yield loader.load_item()



        # title = response.css('h1.title-info-title span.title-info-title-text::text').extract_first()
        # photos = response.xpath('//div[contains(@class, "gallery-img-wrapper")]//div[contains(@class, "gallery-img-frame")]/@data-url').extract()
        # # print(title, photos)
        # yield AvitoparserItem(title=title, photos=photos)