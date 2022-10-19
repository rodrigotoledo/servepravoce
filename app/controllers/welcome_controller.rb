# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @objects_to_sell = ObjectToSell.limit(8)
  end
end
