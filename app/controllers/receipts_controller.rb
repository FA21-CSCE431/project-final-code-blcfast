# frozen_string_literal: true

class ReceiptsController < ApplicationController # rubocop:todo Style/Documentation
  before_action :set_receipt, only: %i[show edit update destroy]
  @@sort_dir = 1 # desc # rubocop:todo Style/ClassVars

  # GET /receipts or /receipts.json
  # rubocop:todo Metrics/PerceivedComplexity
  # rubocop:todo Metrics/MethodLength
  # rubocop:todo Metrics/AbcSize
  def index # rubocop:todo Metrics/CyclomaticComplexity, Metrics/AbcSize, Metrics/MethodLength, Metrics/PerceivedComplexity
    @receipts = Receipt.all
    case params[:order]
    when 'date'
      case @@sort_dir
      when 1
        @receipts = Receipt.all.sort_by(&:date)
      when -1
        @receipts = Receipt.all.sort_by(&:date).reverse!
      end
      @@sort_dir *= -1 # rubocop:todo Style/ClassVars
    when 'amount'
      @receipts = Receipt.all.sort_by { |receipt| @@sort_dir * receipt.amount }
      @@sort_dir *= -1 # rubocop:todo Style/ClassVars
    when 'status'
      case @@sort_dir
      when 1
        @receipts = Receipt.all.sort_by(&:status)
      when -1
        @receipts = Receipt.all.sort_by(&:status).reverse!
      end
      @@sort_dir *= -1 # rubocop:todo Style/ClassVars
    end
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/PerceivedComplexity

  # GET /receipts/1 or /receipts/1.json
  def show; end

  # GET /receipts/new
  def new
    @receipt = Receipt.new
  end

  # GET /receipts/1/edit
  def edit; end

  # POST /receipts or /receipts.json
  def create
    @receipt = Receipt.new(receipt_params)

    respond_to do |format|
      if @receipt.save
        format.html { redirect_to @receipt, notice: 'Receipt was successfully created.' }
        format.json { render :show, status: :created, location: @receipt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipts/1 or /receipts/1.json
  def update
    respond_to do |format|
      if @receipt.update(receipt_params)
        format.html { redirect_to @receipt, notice: 'Receipt was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @receipt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipts/1 or /receipts/1.json
  def destroy
    @receipt.destroy
    respond_to do |format|
      format.html { redirect_to receipts_url, notice: 'Receipt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_receipt
    @receipt = Receipt.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def receipt_params
    params.require(:receipt).permit(:picture, :amount, :reason, :date, :status, :expense_type)
  end
end
