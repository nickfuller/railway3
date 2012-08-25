Railway3::Application.routes.draw do

	get 'choos' => 'Choos#index', :as => "choos"
	
	get 'choos/new' => 'Choos#new', :as => "new_choo"
	post 'choos' => 'Choos#create'
	
	get 'choos/:id' => 'Choos#show', :as => "choo"
	get 'choos/:id/edit' => 'Choos#edit', :as => "edit_choo"
	
	put 'choos/:id' => 'Choos#update'
	
	delete 'choos/:id' => 'Choos#destroy'

end
