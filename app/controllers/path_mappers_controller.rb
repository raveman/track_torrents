class PathMappersController < ApplicationController
  before_action :set_path_mapper, only: [:show, :edit, :update, :destroy]

  # GET /path_mappers
  # GET /path_mappers.json
  def index
    @path_mappers = PathMapper.all
  end

  # GET /path_mappers/1
  # GET /path_mappers/1.json
  def show
  end

  # GET /path_mappers/new
  def new
    @path_mapper = PathMapper.new
  end

  # GET /path_mappers/1/edit
  def edit
  end

  # POST /path_mappers
  # POST /path_mappers.json
  def create
    @path_mapper = PathMapper.new(path_mapper_params)

    respond_to do |format|
      if @path_mapper.save
        format.html { redirect_to @path_mapper, notice: 'Path mapper was successfully created.' }
        format.json { render :show, status: :created, location: @path_mapper }
      else
        format.html { render :new }
        format.json { render json: @path_mapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /path_mappers/1
  # PATCH/PUT /path_mappers/1.json
  def update
    respond_to do |format|
      if @path_mapper.update(path_mapper_params)
        format.html { redirect_to @path_mapper, notice: 'Path mapper was successfully updated.' }
        format.json { render :show, status: :ok, location: @path_mapper }
      else
        format.html { render :edit }
        format.json { render json: @path_mapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /path_mappers/1
  # DELETE /path_mappers/1.json
  def destroy
    @path_mapper.destroy
    respond_to do |format|
      format.html { redirect_to path_mappers_url, notice: 'Path mapper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_path_mapper
      @path_mapper = PathMapper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def path_mapper_params
      params.require(:path_mapper).permit(:title, :path)
    end
end
