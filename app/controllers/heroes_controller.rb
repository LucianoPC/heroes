# controller of Hero model
class HeroesController < ApplicationController
  before_action :set_hero, only: [:show, :edit, :update, :destroy]

  NOTICE_MESSAGE = 'Hero was successfully'.freeze
  # GET /heroes
  # GET /heroes.json
  def index
    @heroes = Hero.all
  end

  # GET /heroes/1
  # GET /heroes/1.json
  def show
  end

  # GET /heroes/new
  def new
    @hero = Hero.new
  end

  # GET /heroes/1/edit
  def edit
  end

  # POST /heroes
  # POST /heroes.json
  def create
    @hero = Hero.new(hero_params)

    respond_to do |format|
      if @hero.save
        format.html { redirect_to @hero, notice: "#{NOTICE_MESSAGE} created." }
        format.json { render :show, status: :created, location: @hero }
      else
        format.html { render :new }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heroes/1
  # PATCH/PUT /heroes/1.json
  def update
    respond_to do |format|
      if @hero.update(hero_params)
        format.html { redirect_to @hero, notice: "#{NOTICE_MESSAGE} updated." }
        format.json { render :show, status: :ok, location: @hero }
      else
        format.html { render :edit }
        format.json { render json: @hero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heroes/1
  # DELETE /heroes/1.json
  def destroy
    @hero.destroy
    respond_to do |format|
      format.html do
        redirect_to heroes_url, notice: "#{NOTICE_MESSAGE} destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hero
    @hero = Hero.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white
  # list through.
  def hero_params
    params.require(:hero).permit(:name)
  end
end
