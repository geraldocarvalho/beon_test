Dado('que eu esteja na página inicial') do
  @google_homepage = Home_Google.new
  @google_homepage.load
end

Quando('realizo uma busca') do
  @google_homepage.search_page(DATA['search_engine']['search_for'])
end

E('acesso a pagina de respostas') do
  @search_results = Search_Results.new
end

Entao('valido a pesquisa realizada') do
  expect(@search_results.search_bar.value).to eql(DATA['search_engine']['search_for'])
  expect(@search_results.search_logo).to be_visible
  expect(@search_results.search_header).to be_visible
  expect(@search_results.page_number).to be_visible
  expect(@search_results.page_number.text).to eql(DATA['numbers']['one'].to_s)
  expect(@search_results.web_ratings).to be_visible
  expect(@search_results.web_ratings.text).to eql(DATA['search_engine']['web_rating'])
end

Quando('acesso o terceiro link da pagina de respostas') do
  @search_results.search_result.click
  @linkedin_page = Results_Linkedin.new
end

Entao('valido o acesso ao novo site') do
  expect(@linkedin_page.beon_header).to be_visible
  expect(@linkedin_page.beon_img_logo).to be_visible
  expect(@linkedin_page.about_us_description).to be_visible
  expect(@linkedin_page.basic_info).to be_visible
  expect(@linkedin_page.website_logo).to be_visible
end
