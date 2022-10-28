# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @objects_to_sell = default_objects_to_sell
  end

  def search
    @objects_to_sell = params[:term].present? ? ObjectToSell.where('title ILIKE ? OR description ILIKE ?', "%#{params[:term]}%", "%#{params[:term]}%").order(:title) : default_objects_to_sell
    respond_to do |format|
      format.turbo_stream
    end
  end

  protected

  def default_objects_to_sell
    ObjectToSell.limit(8).order(:title)
  end
end
