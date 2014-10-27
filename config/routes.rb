Bitaculous::Locoroco::Application.routes.draw do
  # Mount LocomotiveCMS as engine
  mount Locomotive::Engine => '/locomotive', as: 'locomotive'

  # Add route for sitemap (german version)
  match '/de/sitemap.xml' => 'locomotive/public/sitemaps#show', format: 'xml'
end