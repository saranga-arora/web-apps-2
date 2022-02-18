class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    # .find(123) is the same as .where({ id: 123 })[0]
    @company = Company.find(params["id"])
  end
  
  def new 
    @company = Company.new
  end 

  def create
    @company = Company.new(params["company"]) #create new company based on params from user
    @company.save #save info
    redirect_to "/companies" #send user back to list of companies
  end 

  def edit
    @company = Company.find(params["id"])
  end

  def update
    @company = Company.find(params["id"])
    @company.update(params["company"])
    redirect_to "/companies"
  end

  def destroy
    @company = Company.find(params["id"])
    @company.destroy
    redirect_to "/companies"
  end 
  
end



