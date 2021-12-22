Dado('que eu esteja na página home') do
  @acess_home = Home_Beon.new
  @acess_home.load
end

Quando('clico no botão join us') do
  @acess_home.join_us_bttn.click
end

E('filtro as vagas') do |dados|
  dados = dados.rows_hash
  @careers = Careers_Beon.new
  @careers.tech_dropdown(dados['Tech'])
  @careers.business_dropdown(dados['Business'])
  @careers.role_dropdown(dados['Role'])
end

Entao('valido as opções apresentadas') do
  if @careers.css_is_visible
    expect(@careers.apply_css).to be_visible
    expect(@careers.job_offer_div).to be_visible
  else
    expect(@careers.oops.text).to eql(DATA['results']['oops'])
    expect(@careers.no_criteria.text).to eql(DATA['results']['no_criteria'])
    expect(@careers.oops).to be_visible
    expect(@careers.no_criteria).to be_visible
  end
end
