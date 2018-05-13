class SeriesController < ApplicationController
  def index
    if params[:keywords].present?
      # Diz ao elastickick para pesquisar as keyrwords nos campos name e description
      @series = Series.search params[:keywords], fields: [:name, :description]
    end
  end
end
