class Purchase < ActiveRecord::Base
	after_create :email_purchaser

private

def email_purchaser
   PurchaseMailer.purchase_receipt(self).deliver
end
	def to_param
		uuid
	end
end
