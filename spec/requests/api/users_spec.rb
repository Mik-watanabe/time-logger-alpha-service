require 'swagger_helper'

RSpec.describe 'user API', type: :request do
    path '/api/v1/users/{id}' do
        get 'Retrieves a user' do
            operationId 'GetUser'
            tags 'User'
            produces 'application/json'
            parameter name: :id, in: :path, type: :integer, required: true

            response '200', 'user found' do
                schema '$ref' => '#/components/schemas/GetUserResponse'
                run_test!           
            end
        end
    end
end