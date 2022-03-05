class ReactorsController < ApplicationController
  before_action :set_reactor, only: [:show, :update, :destroy]

  # GET /reactors
  def index
    @reactors = Reactor.all

    render json: @reactors
  end

  # GET /reactors/1
  def show
    render json: @reactor
  end

  # POST /reactors
  def create
    @reactor = Reactor.new(reactor_params)

    if @reactor.save
      render json: @reactor, status: :created, location: @reactor
    else
      render json: @reactor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reactors/1
  def update
    if @reactor.update(reactor_params)
      render json: @reactor
    else
      render json: @reactor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reactors/1
  # def destroy
  #   @reactor.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reactor
      @reactor = Reactor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reactor_params
      params.require(:reactor).permit(:url, :last_modified, :foaming, :tagged)
    end
end
