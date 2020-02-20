class FoodController < Sinatra::Base


    set :views, './app/views/food'
    set :method_override, true

    get '/foods' do
        erb :foods
    end

    #new
    get '/foods/new' do
        erb :new
    end

    post '/foods/:id' do
        @food = Food.create(name: params["name"], description: params["description"])
        redirect "/foods/#{@food.id}"
    end

    #delete
    get '/foods/:id/delete' do
        Food.find(params[:id]).delete
        redirect "/foods"
    end

    #edit
    get '/foods/:id/edit' do
        @food = Food.find(params[:id])
        erb :edit
    end

    put "/foods/:id" do
        @food = Food.find(params[:id])
        @food.update(name: params[:name], description: params[:description])
        redirect "/foods/#{@food.id}"
    end

    #show
    get '/foods/:id' do
        @food = Food.find(params[:id])
        erb :show
    end

end
