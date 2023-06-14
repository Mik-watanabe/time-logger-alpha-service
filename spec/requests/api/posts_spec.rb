require 'swagger_helper'

RSpec.describe 'post API', type: :request do
    path '/api/v1/posts' do
        get 'Retrieves a list of posts' do
            operationId 'ListPosts'
            tags 'Post'
            produces 'application/json'

            response '200', 'posts found' do
                schema '$ref' => '#/components/schemas/ListPostResponse'
                run_test!           
            end
        end
    end

    path '/api/v1/posts/{id}' do
        get 'Retrieves a post' do
            operationId 'GetPost'
            tags 'Post'
            produces 'application/json'
            parameter name: :id, in: :path, type: :integer, required: true

            response '200', 'post found' do
                schema '$ref' => '#/components/schemas/GetPostResponse'
                run_test!           
            end
        end
    end
end
