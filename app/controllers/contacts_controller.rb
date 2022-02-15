class ContactsController < ApplicationController

  def show
    @contact = Contact.find(params["id"])
  end
  
  def new 
    @contact = Contact.new
    @contact.company_id = params["company_id"] #to transfer state of company
  end 

  def create
    @contact = Contact.new(params["contact"])
    @contact.save
    redirect_to "/companies"
  end 

end
