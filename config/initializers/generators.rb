Rails.application.config.generators do |g|
  g.helper false
  g.assets false
  g.template_engine :erb
  g.skip_routes true
  g.test_fremework false
end
