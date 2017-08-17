class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy, :change_status_sale, :change_status_sold, :show_inventory, :species_dog, :species_cat, :total_amount_sale]
  # GET /animals
  # GET /animals.json
  def index
    @animal = Animal.all
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    @animal = Animal.find(params[:id])
  end

  # GET /animals/new
  def new
    @animal = Animal.new
  end

  # GET /animals/1/edit
  def edit
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params)

    respond_to do |format|
      if @animal.save
        format.html { redirect_to @animal}
        format.json { render :show, status: :created, location: @animal }
      else
        format.html { render :new }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to @animal}
        format.json { render :show, status: :ok, location: @animal }
      else
        format.html { render :edit }
        format.json { render json: @animal.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_status_sale
      @animal.Status = "For Sale"
      @animal.save
      redirect_to animals_path  
  end

  def change_status_sold
      @animal.Status = "Sold"
      @animal.save
      redirect_to animals_path  
  end

  def show_inventory
  end

  def species_dog
    redirect_to animal_show_inventory_path
  end

  def species_cat
    redirect_to animal_show_inventory_path
  end

  def total_amount_sale
    @animal.Price
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy
    respond_to do |format|
      format.html { redirect_to animals_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_animal
    id = params[:animal_id] || params[:id]
    @animal = Animal.find(id)
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_params
      params.require(:animal).permit(:Species, :Breed, :Price, :Status)
    end
end
