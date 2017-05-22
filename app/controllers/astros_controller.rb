class AstrosController < ApplicationController
  before_action :set_astro, only: [:show, :edit, :update, :destroy]

  # GET /astros
  # GET /astros.json
  def index
    @astros = Astro.all
  end

  # GET /astros/1
  # GET /astros/1.json
  def show
  end

  # GET /astros/new
  def new
    @astro = Astro.new
  end

  # GET /astros/1/edit
  def edit
  end

  # POST /astros
  # POST /astros.json
  def create
    @astro = Astro.new(astro_params)

    respond_to do |format|
      if @astro.save
        format.html { redirect_to @astro, notice: 'Astro was successfully created.' }
        format.json { render :show, status: :created, location: @astro }
      else
        format.html { render :new }
        format.json { render json: @astro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /astros/1
  # PATCH/PUT /astros/1.json
  def update
    respond_to do |format|
      if @astro.update(astro_params)
        format.html { redirect_to @astro, notice: 'Astro was successfully updated.' }
        format.json { render :show, status: :ok, location: @astro }
      else
        format.html { render :edit }
        format.json { render json: @astro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /astros/1
  # DELETE /astros/1.json
  def destroy
    @astro.destroy
    respond_to do |format|
      format.html { redirect_to astros_url, notice: 'Astro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_astro
      @astro = Astro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def astro_params
      params.require(:astro).permit(:punk, :mango, :sticker)
    end
end
