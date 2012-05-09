class AssesController < ApplicationController
  # GET /asses
  # GET /asses.json
  def index
    @asses = Ass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asses }
    end
  end

  # GET /asses/1
  # GET /asses/1.json
  def show
    @ass = Ass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ass }
    end
  end

  # GET /asses/new
  # GET /asses/new.json
  def new
    @ass = Ass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ass }
    end
  end

  # GET /asses/1/edit
  def edit
    @ass = Ass.find(params[:id])
  end

  # POST /asses
  # POST /asses.json
  def create
    @ass = Ass.new(params[:ass])

    respond_to do |format|
      if @ass.save
        format.html { redirect_to @ass, notice: 'Ass was successfully created.' }
        format.json { render json: @ass, status: :created, location: @ass }
      else
        format.html { render action: "new" }
        format.json { render json: @ass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asses/1
  # PUT /asses/1.json
  def update
    @ass = Ass.find(params[:id])

    respond_to do |format|
      if @ass.update_attributes(params[:ass])
        format.html { redirect_to @ass, notice: 'Ass was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @ass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asses/1
  # DELETE /asses/1.json
  def destroy
    @ass = Ass.find(params[:id])
    @ass.destroy

    respond_to do |format|
      format.html { redirect_to asses_url }
      format.json { head :ok }
    end
  end
end
