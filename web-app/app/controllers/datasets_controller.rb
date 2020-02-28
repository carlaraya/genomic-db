class DatasetsController < ApplicationController
 before_action :set_dataset_with_data_files, only: [:show, :edit]
 before_action :set_dataset, only: [:update, :destroy, :destroy_data_file]

  # GET /datasets
  # GET /datasets.json
  def index
    @datasets = Dataset.with_attached_data_files
  end

  # GET /datasets/1
  # GET /datasets/1.json
  def show
  end

  # GET /datasets/new
  def new
    @dataset = Dataset.new
  end

  # GET /datasets/1/edit
  def edit
  end

  # POST /datasets
  # POST /datasets.json
  def create
    @dataset = Dataset.new(dataset_params)

    respond_to do |format|
      if @dataset.save
        format.html { redirect_to @dataset, notice: 'Dataset was successfully created.' }
        format.json { render :show, status: :created, location: @dataset }
      else
        format.html { render :new }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datasets/1
  # PATCH/PUT /datasets/1.json
  def update
    respond_to do |format|
      if @dataset.update(dataset_params)
        format.html { redirect_to @dataset, notice: 'Dataset was successfully updated.' }
        format.json { render :show, status: :ok, location: @dataset }
      else
        format.html { render :edit }
        format.json { render json: @dataset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datasets/1
  # DELETE /datasets/1.json
  def destroy
    @dataset.destroy
    respond_to do |format|
      format.html { redirect_to datasets_url, notice: 'Dataset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def destroy_data_file
    @data_file = ActiveStorage::Attachment.find(params[:data_file_id])
    @data_file.purge
    # To get the dataset associated with data_file: @data_file.record
    respond_to do |format|
      format.html { redirect_to edit_dataset_path(@dataset), notice: 'Data file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dataset
      @dataset = Dataset.find(params[:id])
    end

    def set_dataset_with_data_files
      @dataset = Dataset.where(id: params[:id]).with_attached_data_files.first
    end

    # Only allow a list of trusted parameters through.
    def dataset_params
      params.require(:dataset).permit(:name, :description, :uploader, :institute, data_files: [])
    end
end
