class MembershipsController < ApplicationController
before_filter :authenticate_user!


  def destroy
    @membership = Membership.find(params[:id])
    if @membership.present?
      @membership.destroy
    end
    flash[:notice] = "Removed Membership."
    redirect_to root_url
  end
  

   private

    def membership_params
      params.require(:membership).permit(:user_id, :project_id) if params[:membership]
    end
end
