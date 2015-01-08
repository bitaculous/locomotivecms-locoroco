describe 'routing' do
  it 'routes to `locomotive/public/pages#show`' do
    expect(get '/').to route_to 'locomotive/public/pages#show'
  end
end