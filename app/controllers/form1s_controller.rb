class Form1sController < ApplicationController
  before_action :set_form1, only: [:show, :edit, :update, :destroy]

  # GET /form1s
  # GET /form1s.json
  def index
    @form1s = Form1.all
  end

  # GET /form1s/1
  # GET /form1s/1.json
  def show
  end

  # GET /form1s/new
  def new
    @form1 = Form1.new
  end

  # GET /form1s/1/edit
  def edit
  end

  # POST /form1s
  # POST /form1s.json
  def create
    @form1 = Form1.new(form1_params)

    respond_to do |format|
      if @form1.save
        format.html { redirect_to @form1, notice: 'Form was successfully created.' }
        format.json { render action: 'show', status: :created, location: @form1 }
      else
        format.html { render action: 'new' }
        format.json { render json: @form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form1s/1
  # PATCH/PUT /form1s/1.json
  def update
    respond_to do |format|
      if @form1.update(form1_params)
        format.html { redirect_to @form1, notice: 'Form was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form1s/1
  # DELETE /form1s/1.json
  def destroy
    @form1.destroy
    respond_to do |format|
      format.html { redirect_to form1s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form1
      @form1 = Form1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form1_params
      params.require(:form1).permit(:name, :email, :mobileno, :message)
    end
end
