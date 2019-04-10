class RegistrationsController < Devise::RegistrationsController
  def new
    super do
      @user = User.new
    end
  end

  def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          # Tell the UserMailer to send a welcome email after save
          UserMailer.with(user: @user).welcome_email.deliver_now
  
          # format.html { redirect_to(@user, notice: 'User was successfully createddddd.') }
          format.html { redirect_to(root_path, notice: 'User was successfully created.') }
          # format.json { render json: @user, status: :created, location: @user }
        else
          format.html { render action: 'new' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
  end

  def update
    super
  end

  def show
    super
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end
