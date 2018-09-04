class DocumentsController < ApplicationController
  def index
     @documents = Document.all
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(params[:document])
    if @document.save
      redirect_to documents_path, notice: "The document #{@document.name} has been uploaded."
    else
      render "new"
     end
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to documents_path, notice:  "The document #{@document.name} has been deleted."
  end
end
