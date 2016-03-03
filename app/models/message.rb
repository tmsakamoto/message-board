class Message < ActiveRecord::Base
    #名前：必須、20文字以内
    validates :name , length: { maximum: 20 } , presence: true
    # 年齢:0以上
    validates :age , numericality: { only_intger: true, greater_than_or_equal_to: 0 } , allow_blank: true
    #内容：必須、2文字以上30文字以下
    validates :body ,length: { minimum: 2, maximum:30 } , presence: true
end
