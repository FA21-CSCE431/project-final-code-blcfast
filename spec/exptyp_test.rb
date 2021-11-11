require 'spec_helper'

describe "expense type" do
    context "valid input" do
        it "creates a valid expense type" do
            @etype = ExpenseType.new(:etype => "Test", :description => "To test expense type funcitonality")
            expect(@etype.etype).to include("Test")
            expect(@etype.description).to include("To test expense type funcitonality")
        end
    end

    context "no input" do
        it "does not create an expense type" do
            @etype = ExpenseType.new(:etype => "", :description => "")
            expect(@etype.etype).to include("Test")
            expect(@etype.description).to include("To test expense type funcitonality")
        end
    end
end