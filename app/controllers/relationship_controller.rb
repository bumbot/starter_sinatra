class RelationshipController < Sinatra::Base

    set :views, './app/views/relationship'
    set :method_override, true

    get "/relationship/food" do
        erb :show
    end

    get "/relationship/food/:id" do
        @food = Food.find(params[:id])
        erb :food_new
    end

    post "/relationship/food" do
        # binding.pry
        params[:person].each_with_index{ |x, i|
        
            @employee =  Employee.find(x.to_i)
            @snippet = params[:snippet][i]
            Foodowner.create(employee_id: @employee.id, food_id: params[:food].to_i, snippet: @snippet)
        }

        redirect "relationship/food"
    end

end
