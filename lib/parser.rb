require 'csv'
module Parser
	class Client
		COLUMNS = ['slum', 'house', 'womanID', 'displayID', 'name', 'dob',
				   'husbandName', 'phone', 'pregnanceCount', 'liveBirthsCount', 'liveChildrenCount',
				   'registrationDate', 'isPregnant', 'isCurrentlyBreastFeeding', 'LMP'] 
		def initialize file_name
			raise 'File name missing' unless file_name
			absolute_path = Rails.root.join('uploads', file_name)
			@file = File.exist? absolute_path
			raise 'File does not exist' unless @file
		end

		def parse

		end
	end
end