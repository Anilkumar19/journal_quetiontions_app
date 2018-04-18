class GenaralQuestionListsController < InheritedResources::Base

  def index
    @genaral_question_lists = GenaralQuestionList.all
  end

  # GET /banners/1
  # GET /banners/1.json
  def show
    @genaral_question_list = GenaralQuestionList.find(params[:id])
  end

  # GET /banners/new
  # GET /banners/new.json
  def new
    @genaral_question_list = GenaralQuestionList.new
  end

  # GET /banners/1/edit
  def edit
    @genaral_question_list = GenaralQuestionList.find(params[:id])
  end

  # POST /banners
  # POST /banners.json
  def create
    @genaral_question_list = GenaralQuestionList.new(genaral_question_list_params)

    
      if @genaral_question_list.save
        redirect_to @genaral_question_list, notice: 'Questions was successfully created.'
      else
        render action: "new" 
      end
  end

  # PUT /banners/1
  # PUT /banners/1.json
  def update
    @genaral_question_list = GenaralQuestionList.find(params[:id])

      if @genaral_question_list.update(genaral_question_list_params)
        redirect_to @genaral_question_list, notice: 'Questions was successfully updated.'
      else
        render action: "edit" 
      end
  end

  # DELETE /banners/1
  # DELETE /banners/1.json
  def destroy
    @genaral_question_list = GenaralQuestionList.find(params[:id])
    @genaral_question_list.destroy
  end

  private

    def genaral_question_list_params
      params.require(:genaral_question_list).permit(:question, :answer, :category)
    end
end

