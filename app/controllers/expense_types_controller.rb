class ExpenseTypesController < ApplicationController
  before_action :set_expense_type, only: %i[ show edit update destroy ]

  def index
	  @expense_types = ExpenseType.all
  end

  def show
  end
  
  def new
	  @expense_type = ExpenseType.new
  end

  def create
	@expense_type = ExpenseType.new(expense_type_params)

    respond_to do |format|
      if @expense_type.save
        format.html { redirect_to @expense_type, notice: "Expense Type was successfully created." }
        format.json { render :show, status: :created, location: @expense_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
        if @expense_type.update(expense_type_params)
          format.html { redirect_to @expense_type, notice: "Expense Type was successfully updated." }
          format.json { render :show, status: :ok, location: @expense_type }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @expense_type.errors, status: :unprocessable_entity }
        end
      end
  end

  def delete
  end

  def destroy
    @expense_type.destroy
    respond_to do |format|
      format.html { redirect_to expense_types_index_path, notice: "Expense Type was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  private
	def set_expense_type
      @expense_type = ExpenseType.find(params[:id])
  end
  
	def expense_type_params
		params.require(:expense_type).permit(:etype, :description)
	end
end
