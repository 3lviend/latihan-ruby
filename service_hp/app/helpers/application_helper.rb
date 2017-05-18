module ApplicationHelper
	def role_name(role_id)
		Role.find(role_id).name
	end

	def customer_name(itemrepair_id)
		itemrepair = Itemrepair.find(itemrepair_id)
		customer_name = itemrepair.customer.name
		return customer_name
	end

	def currency(cur)
		number_to_currency(cur, unit: "Rp.")
	end

	def status_for_teknisi
		if current_staff.role.name == "Teknisi"
			repairs = Repair.all
			@repair = repairs.new_entry + repairs.on_repair + repairs.pending_part
		end
	end

	def totalrepair
		Repair.all.size
	end

	def payments
		total = 0
		@payment.each do |pay|
		total += pay.total
		end
	end
end
