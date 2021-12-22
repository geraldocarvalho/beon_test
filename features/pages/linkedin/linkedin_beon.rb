class Results_Linkedin < SitePrism::Page
  element :beon_header, '.top-card-layout__title'
  element :beon_img_logo, '.artdeco-entity-image.artdeco-entity-image--square-8.top-card-layout__entity-image.lazy-loaded'
  element :about_us_description, '.about-us__description'
  element :basic_info, '.about-us__basic-info-list'
  element :website_logo, '.nav-logo.lazy-loaded'
end
