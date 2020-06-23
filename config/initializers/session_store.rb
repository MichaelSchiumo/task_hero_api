if Rails.env == 'production'

Rails.application.config.session_store :cookie_store, key: '_task_hero_app', domain: 'sample-app-api.herokuapp.com'

else 
    Rails.application.config.session_store :cookie_store, key: '_task_hero_app'
end

