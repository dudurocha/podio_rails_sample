Rails.application.config.middleware.use OmniAuth::Builder do
  provider :podio, ENV['criatec2-wcd6fn'], ENV['L88GXQWRoXqs5d7pu7xtxPHuYWevhKzAf6QvBdVKXhelCbR6XkOpuAZwVDzCURL2']
end