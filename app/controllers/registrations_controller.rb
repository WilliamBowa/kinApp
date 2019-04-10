class RegistrationsController < Devise::RegistrationsController
  def new
    super do
    end
  end

  def create
    # add custom create logic here
  end

  def update
    super
  end
end 