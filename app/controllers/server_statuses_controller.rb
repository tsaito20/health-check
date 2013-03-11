class ServerStatusesController < ApplicationController
  # GET /server_statuses
  # GET /server_statuses.json
  def index
    @server_statuses = ServerStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @server_statuses }
    end
  end

  # GET /server_statuses/1
  # GET /server_statuses/1.json
  def show
    @server_status = ServerStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server_status }
    end
  end

  # GET /server_statuses/new
  # GET /server_statuses/new.json
  def new
    @server_status = ServerStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server_status }
    end
  end

  # GET /server_statuses/1/edit
  def edit
    @server_status = ServerStatus.find(params[:id])
  end

  # POST /server_statuses
  # POST /server_statuses.json
  def create
    @server_status = ServerStatus.new(params[:server_status])

    respond_to do |format|
      if @server_status.save
        format.html { redirect_to @server_status, notice: 'Server status was successfully created.' }
        format.json { render json: @server_status, status: :created, location: @server_status }
      else
        format.html { render action: "new" }
        format.json { render json: @server_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /server_statuses/1
  # PUT /server_statuses/1.json
  def update
    @server_status = ServerStatus.find(params[:id])

    respond_to do |format|
      if @server_status.update_attributes(params[:server_status])
        format.html { redirect_to @server_status, notice: 'Server status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @server_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_statuses/1
  # DELETE /server_statuses/1.json
  def destroy
    @server_status = ServerStatus.find(params[:id])
    @server_status.destroy

    respond_to do |format|
      format.html { redirect_to server_statuses_url }
      format.json { head :no_content }
    end
  end
end
