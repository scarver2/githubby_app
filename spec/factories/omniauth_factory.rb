FactoryGirl.define do
  factory :omniauth_github_hash, class:Hash do
    provider 'github'
    uid '123456'
    info {{
      'name' => 'Bubba Gump',
      'email' => 'bubba@gump.com',
      'nickname' => 'bubba'
    }}
    # 'extra' => {
    #   'raw_info' =>
    #     { 'location' => 'New Orleans',
    #       'gravatar_id' => '123456789'
    #     }
    # }
    initialize_with { attributes.with_indifferent_access }
  end
end
