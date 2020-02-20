class EmployeeController < Sinatra::Base


    set :views, './app/views/employee'
    set :method_override, true

    get '/employees' do
        erb :employees
    end

    #new
    get '/employees/new' do
        erb :new
    end

    post '/employees/:id' do
        @person = Employee.create(name: params["name"], position: params["position"], age: params["age"])
        redirect "/employees/#{@person.id}"
    end

    #delete
    get '/employees/:id/delete' do
        Employee.find(params[:id]).delete
        redirect "/employees"
    end

    #edit
    get '/employees/:id/edit' do
        @person = Employee.find(params[:id])
        erb :edit
    end

    put "/employees/:id" do
        @person = Employee.find(params[:id])
        @person.update(position: params["position"], age: params["age"])
        redirect "/employees/#{@person.id}"
    end

    #show
    get '/employees/:id' do
        @person = Employee.find(params[:id])
        erb :show
    end

    
end
