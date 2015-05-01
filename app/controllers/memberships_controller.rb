class MembershipsController < ApplicationController
before_filter :authenticate_user!

  def invite_user
   user = User.find_by_email(params[:email])
   project = Project.find(params[:id])
   if user
     project.users << user
   else
     send_invite user.email
     project.invited_users << user
   end
  end

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
