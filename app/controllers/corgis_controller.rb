class CorgisController < ApplicationController
  before_action :set_corgi, only: [:show, :update, :destroy]

  # GET /corgis
  def index
    @corgis = Corgi.all

    render json: @corgis
  end

  # GET /corgis/1
  def show
    render json: @corgi
  end

  # POST /corgis
  def create
    @corgi = Corgi.new(corgi_params)

    if @corgi.save
      render json: @corgi, status: :created, location: @corgi
    else
      render json: @corgi.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /corgis/1
  def update
    if @corgi.update(corgi_params)
      render json: @corgi
    else
      render json: @corgi.errors, status: :unprocessable_entity
    end
  end

  # DELETE /corgis/1
  def destroy
    @corgi.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_corgi
      @corgi = Corgi.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def corgi_params
      params.require(:corgi).permit(:name,:age,:enjoys)
    end
end
