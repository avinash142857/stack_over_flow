scope defaults: { format: 'json' } do
	scope module: :v1, constraints: ApiVersion.new('v1') do
		resources :questions, only: [:show, :create] 
	end
end