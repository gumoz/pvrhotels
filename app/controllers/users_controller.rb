class UsersController < ApplicationController
  # Be sure to include AuthenticationSystem in Application Controller instead
  before_filter :login_required
  before_filter :find_user, :only => [:edit, :update, :destroy] 
  
  def index
    @users = User.find(:all, :order => "name", :conditions => ["login != ?", "superadmin"])
  end

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    #No quiero que se salga del administrador cuando crea un nuevo usuario.
    #logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      #self.current_user = @user # !! now logged in
      #redirect_back_or_default('/')
      flash[:notice] = "User created."
      redirect_to(users_path)
    else
      flash[:error]  = "There was an error, please try again."
      render :action => 'new'
    end
  end
  
  def edit
  end
  
  def update

     if @user.update_attributes(params[:user])
       flash[:notice] = "#{@user.login} has been succesfully updated."
       redirect_to(users_path)
     else
       render :action => 'edit'
     end
   end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User sucessfully deleted."
    redirect_to(users_path)
  end
  private
  def find_user
    @user = User.find(params[:id])
  end
end
