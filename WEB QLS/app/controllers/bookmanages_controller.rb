class BookmanagesController < ApplicationController
  before_action :set_bookmanage, only: %i[ show edit update destroy ]

  # GET /bookmanages or /bookmanages.json
  def index
    @bookmanages = Bookmanage.all
  end

  # GET /bookmanages/1 or /bookmanages/1.json
  def show
  end

  # GET /bookmanages/new
  def new
    @bookmanage = Bookmanage.new
  end

  # GET /bookmanages/1/edit
  def edit
  end

  # POST /bookmanages or /bookmanages.json
  def create
    @bookmanage = Bookmanage.new(bookmanage_params)

    respond_to do |format|
      if @bookmanage.save
        format.html { redirect_to bookmanage_url(@bookmanage), notice: "Bookmanage was successfully created." }
        format.json { render :show, status: :created, location: @bookmanage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmanage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmanages/1 or /bookmanages/1.json
  def update
    respond_to do |format|
      if @bookmanage.update(bookmanage_params)
        format.html { redirect_to bookmanage_url(@bookmanage), notice: "Bookmanage was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmanage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmanage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmanages/1 or /bookmanages/1.json
  def destroy
    @bookmanage.destroy

    respond_to do |format|
      format.html { redirect_to bookmanages_url, notice: "Bookmanage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmanage
      @bookmanage = Bookmanage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmanage_params
      params.require(:bookmanage).permit(:stt, :maHS, :lop, :maSach, :tenSach, :tenTacGia, :ngayMuon, :ngayTra, :soNgay, :ghiChu)
    end
end
