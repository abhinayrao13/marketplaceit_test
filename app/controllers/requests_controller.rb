class RequestsController < ApplicationController
  before_action :set_request, only: [:approval]
  def approval
    respond_to do |format|
      status = @request.pending? || @request.rejected? ? "approved" : "rejected"
      if @request.update({status: status})
        format.html { redirect_to root_path, notice: 'Successfully updated.' }
        format.json { render json: {status: @request.status.capitalize}, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end
end
