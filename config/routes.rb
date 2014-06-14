Bitaculous::Locoroco::Application.routes.draw do
  # Mount LocomotiveCMS as engine
  mount Locomotive::Engine => '/locomotive', as: 'locomotive'
end