class Home_Google < SitePrism::Page
  set_url :'https://www.google.com/'

  element :search_bar, '.gLFyf.gsfi'
  element :search_bttn, 'body > div.L3eUgb > div.o3j99.ikrT4e.om7nvf > form > div:nth-child(1) > div.A8SBwf.emcav > div.UUbT9 > div.aajZCb > div.lJ9FBc > center > input.gNO89b'

  def search_page(pages)
    search_bar.click
    search_bar.set(pages)
    search_bttn.click
  end
end
