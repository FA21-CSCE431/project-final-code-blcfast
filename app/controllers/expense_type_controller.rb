class ExpenseTypeController < ApplicationController

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
  end

  def delete
  end

  def destroy
  end
end
