require_relative './config/environment'

use Rack::MethodOverride


use RelationshipController
use EmployeeController
use FoodController
run ApplicationController
