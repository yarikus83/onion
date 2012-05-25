class NotesController < ApplicationController
  
  before_filter :getnote, :only => [:show, :destroy, :edit]
  
  def getnote
	  @note = Note.find(params[:id])
	end
  
  def create
	  @note = Note.new(params[:note])
	  if @note.save
		  flash[:notice] = "everything is OK"
		redirect_to notes_path
	
		else
			fetch_notes
			render :action => 'index'
		end
	end
	  
  def index
	  @note = Note.new
	  fetch_notes
  end

  def show
  end
  
  
  def edit
	  @note.edit
	end

  def destroy
	  @note.destroy
	  redirect_to notes_path
  end
  
  
  protected 
  
  def fetch_notes
	  @notes = Note.order('created_at DESC').all
	end
end
