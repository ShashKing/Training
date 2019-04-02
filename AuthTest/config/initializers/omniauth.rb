Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['695428007356-66ucu2ljq0pd1oiaghrpa8sd99vdnp1n.apps.googleusercontent.com'], ENV['GpaeS6GJX7hDBm6c-xfQPrif'], {
  scope: ['email','https://www.googleapis.com/auth/gmail.modify'],
    access_type: 'offline'}
end