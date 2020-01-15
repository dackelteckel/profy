class QuestionsController < ApplicationController
  def create
    Question.create(create_params)
    # returnは慣習的につけるようにするのがベター
    redirect_to :root and return
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  private
  def create_params
    # .requireメソッド：データのオブジェクト名を定める
    # .permitメソッド：変更を加えられる（保存の処理ができる）キーを指定
    # mergeメソッドを使うことによって、ストロングパラメーター(create_params)が生成される際にuser_idとgroup_idのキーと値を持つハッシュを追加
    params.require(:question).permit(:text).merge(user_id: current_user.id, group_id: current_user.group_id)
  end
end
