class Question < ApplicationRecord

  belongs_to :user
  belongs_to :group
  #ポリモーフィック関連の定義でひとつのfeed_contentに紐づくよう編集する。dependentオプションも追加する。
  has_many :answers, dependent: :destroy
  has_one :feed_content, as: :content, dependent: :destroy

  #validation
  validates_presence_of :user_id, :text, :group_id

  #callback
  after_create :create_feed_content

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

  # レシーバである質問に、現在ログインしているユーザーが既に回答している場合はtrueを、回答していない場合はfalseを返す
  def answered?(user)
    answers.exists?(user_id: user.id)
  end

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: group_id, updated_at: updated_at)
  end
end
