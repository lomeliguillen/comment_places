class CommentsController < ApplicationController


  def create
    @place = Place.find_by_id(params[:place_id])
    return render_not_found if @place.blank?

    @place.comments.create(comment_params)
    redirect_to root_path
  end

  private

  def render_not_found(status=:not_found)
    render plain: "#{status.to_s.titleize}:(", status: status
  end

  def comment_params
    params.require(:comment).permit(:description)
  end

end
