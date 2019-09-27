class QuestionsController < ApplicationController
 before_action :set_user, only:[:create, :update, :destroy]

 def index
    @questions = Question.all.sort_by{|question| question.id }
    render json: @questions
 end

 def show
    @question = Question.find(params[:id])
    render json: @question
 end

 def create
    @question = @user.questions.build(question_params)
    if @question.valid?
        @question.save
        render json: @question
    else
        render json: {errors: "Questions not created"}
    end
 end

 def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    if (@question.valid?)
        @question.save
        render json: @question
    else    
        render json: {errors: "Couldnt update the question"}
    end
 end

 def destroy
    @question = Question.find(params[:id])
    @question.destroy
 end

 private

 def set_user
    @user = User.find_by(id: params[:user_id])
 end

 def question_params
    params.require(:question).permit(:text, :first_choice, :second_choide, :third_choice, :correct_answer)
 end

end
