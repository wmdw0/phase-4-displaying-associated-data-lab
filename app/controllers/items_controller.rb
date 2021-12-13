class ItemsController < ApplicationController
    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        items = Item.all.order(name: :desc)
        render json: items, include: :user
      end

#       private

#   def render_not_found_response
#     render json: { error: "Dog house not found" }, status: :not_found
#   end
end
