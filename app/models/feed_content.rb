class FeedContent < ApplicationRecord

  # ポリモーフィック関連の定義で一つのcontentに紐づくよう編集する。
  belongs_to :content, polymorphic: true

end
