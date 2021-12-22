class Careers_Beon < SitePrism::Page
  element :tech_drop, '.col-0.mr-3'
  element :business_drop, '.mr-3', text: 'Business'
  element :role_drop, '.mr-3', text: 'Role'
  element :oops, '.pt-lg-3'
  element :no_criteria, '.mx-auto'
  element :apply_css, '#section-job-offers-container > div:nth-child(3) > div > div.col-2.text-center > a'
  element :job_offer_div, '.job-offer.row'

  def tech_dropdown(tech)
    tech_drop.click
    tech_drop.find('option', text: tech.to_s).click
  end

  def business_dropdown(business)
    business_drop.click
    business_drop.find('option', text: business.to_s).click
  end

  def role_dropdown(role)
    role_drop.click
    role_drop.find('option', text: role.to_s).click
  end

  def css_is_visible
    has_css?('#section-job-offers-container > div:nth-child(3) > div > div.col-2.text-center > a')
  end
end
