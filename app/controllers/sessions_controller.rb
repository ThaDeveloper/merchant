class SessionsController < ApplicationController

  def create
    @user = User.find_or_create_by_auth(request.env["omniauth.auth"])
    session[:user_id] = @user.id
    #load_order
    #@order.update_attributes(user: @user)
    redirect_to products_path, notice: "Logged in as #{@user.name}"
  end

  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    respond_to do |format|
		  format.html { redirect_to root_url, notice: "Goodbye! Come back again." }
    end

end
  private


end
