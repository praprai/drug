class DrugcodesController < ApplicationController
  # GET /drugcodes
  # GET /drugcodes.json
  def index
    @drugcodes = Drugcode.page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @drugcodes }
    end
  end

  # GET /drugcodes/1
  # GET /drugcodes/1.json
  def show
    @drugcode = Drugcode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @drugcode }
    end
  end

  # GET /drugcodes/new
  # GET /drugcodes/new.json
  def new
    @drugcode = Drugcode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @drugcode }
    end
  end

  # GET /drugcodes/1/edit
  def edit
    @drugcode = Drugcode.find(params[:id])
  end

  # POST /drugcodes
  # POST /drugcodes.json
  def create
    @drugcode = Drugcode.new(params[:drugcode])

    respond_to do |format|
      if @drugcode.save
        format.html { redirect_to @drugcode, :notice => 'Drugcode was successfully created.' }
        format.json { render :json => @drugcode, :status => :created, :location => @drugcode }
      else
        format.html { render :action => "new" }
        format.json { render :json => @drugcode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drugcodes/1
  # PUT /drugcodes/1.json
  def update
    @drugcode = Drugcode.find(params[:id])

    respond_to do |format|
      if @drugcode.update_attributes(params[:drugcode])
        format.html { redirect_to @drugcode, :notice => 'Drugcode was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @drugcode.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drugcodes/1
  # DELETE /drugcodes/1.json
  def destroy
    @drugcode = Drugcode.find(params[:id])
    @drugcode.destroy

    respond_to do |format|
      format.html { redirect_to drugcodes_url }
      format.json { head :ok }
    end
  end
end
