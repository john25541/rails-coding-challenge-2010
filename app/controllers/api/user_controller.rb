module Api
    class UserController < ApplicationController
      skip_before_action :verify_authenticity_token

      def transactions
        transaction = Transaction.where(user_id: params[:id])
        render json:{status: '200 OK', data: transaction}
      end

      def create
        transaction = current_user.transactions.new(transaction_params)
          if transaction.save
            render json:{status: '201 Created', data: transaction}
          else
            render json:{ status: 'error' ,data: transaction.errors}
          end
      end

      def transaction_params
        params.permit(:amount, :transaction_type, :user_id)
      end
    end
end