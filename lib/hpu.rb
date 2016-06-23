#encoding: utf-8
module HPU
	def convert(str)			
		return str.chars.map {|w| cv(w)}.join	
	end
	def cv(word)
		case word
		when 'À'
			return 'az1'
		when 'Á'
			return 'az2'
		when 'Ả'
			return 'az3'
		when 'Ã'
			return 'az4'
		when 'Ạ'
			return 'az5'
		when 'Ă'
			return 'az6'
		when 'Ằ'
			return 'az7'
		when 'Ắ'
			return 'az8'
		when 'Ẳ'
			return 'az9'
		when 'Ẵ'
			return 'az91'
		when 'Ặ'
			return 'az92'
		when 'Â'
			return 'az93'
		when 'Ầ'
			return 'az94'
		when 'Ấ'
			return 'az95'
		when 'Ẩ'
			return 'az96'
		when 'Ẫ'
			return 'az97'
		when 'Ậ'
			return 'az98'
		when 'Đ'
			return 'dz'
		when 'È'
			return 'ez'
		when 'É'
			return 'ez2'
		when 'Ẻ'
			return 'ez3'
		when 'Ẽ'
			return 'ez4'
		when 'Ẹ'
			return 'ez5'
		when 'Ê'
			return 'ez6'
		when 'Ề'
			return 'ez7'
		when 'Ế'
			return 'ez8'
		when 'Ể'
			return 'ez9'
		when 'Ễ'
			return 'ez91'
		when 'Ệ'
			return 'ez92'
		when 'Ì'
			return 'iz'
		when 'Í'
			return 'iz2'
		when 'Ỉ'
			return 'iz3'
		when 'Ĩ'
			return 'iz4'
		when 'Ị'
			return 'iz5'
		when 'Ò'
			return 'oz'
		when 'Ó'
			return 'oz2'
		when 'Ỏ'
			return 'oz3'
		when 'Õ'
			return 'oz4'
		when 'Ọ'
			return 'oz5'
		when 'Ô'
			return 'oz6'
		when 'Ồ'
			return 'oz7'
		when 'Ố'
			return 'oz8'
		when 'Ổ'
			return 'oz9'
		when 'Ỗ'
			return 'oz91'
		when 'Ộ'
			return 'oz92'
		when 'Ơ'
			return 'oz93'
		when 'Ờ'
			return 'oz94'
		when 'Ớ'
			return 'oz95'
		when 'Ở'
			return 'oz96'
		when 'Ỡ'
			return 'oz97'
		when 'Ợ'
			return 'oz98'
		when 'Ù'
			return 'uz'
		when 'Ú'
			return 'uz2'
		when 'Ủ'
			return 'uz3'
		when 'Ũ'
			return 'uz4'
		when 'Ụ'
			return 'uz5'
		when 'Ư'
			return 'uz6'
		when 'Ừ'
			return 'uz7'
		when 'Ứ'
			return 'uz8'
		when 'Ử'
			return 'uz9'
		when 'Ữ'
			return 'uz91'
		when 'Ự'
			return 'uz92'
		when 'Ỳ'
			return 'yz'
		when 'Ý'
			return 'yz2'
		when 'Ỷ'
			return 'yz3'
		when 'Ỹ'
			return 'yz4'
		when 'Ỵ'
			return 'yz5'
		when 'à'
			return 'az1'
		when 'á'
			return 'az2'
		when 'ả'
			return 'az3'
		when 'ã'
			return 'az4'
		when 'ạ'
			return 'az5'
		when 'ă'
			return 'az6'
		when 'ằ'
			return 'az7'
		when 'ắ'
			return 'az8'
		when 'ẳ'
			return 'az9'
		when 'ẵ'
			return 'az91'
		when 'ặ'
			return 'az92'
		when 'â'
			return 'az93'
		when 'ầ'
			return 'az94'
		when 'ấ'
			return 'az95'
		when 'ẩ'
			return 'az96'
		when 'ẫ'
			return 'az97'
		when 'ậ'
			return 'az98'
		when 'đ'
			return 'dz'
		when 'è'
			return 'ez'
		when 'é'
			return 'ez2'
		when 'ẻ'
			return 'ez3'
		when 'ẽ'
			return 'ez4'
		when 'ẹ'
			return 'ez5'
		when 'ê'
			return 'ez6'
		when 'ề'
			return 'ez7'
		when 'ế'
			return 'ez8'
		when 'ể'
			return 'ez9'
		when 'ễ'
			return 'ez91'
		when 'ệ'
			return 'ez92'
		when 'ì'
			return 'iz'
		when 'í'
			return 'iz2'
		when 'ỉ'
			return 'iz3'
		when 'ĩ'
			return 'iz4'
		when 'ị'
			return 'iz5'
		when 'ò'
			return 'oz'
		when 'ó'
			return 'oz2'
		when 'ỏ'
			return 'oz3'
		when 'õ'
			return 'oz4'
		when 'ọ'
			return 'oz5'
		when 'ô'
			return 'oz6'
		when 'ồ'
			return 'oz7'
		when 'ố'
			return 'oz8'
		when 'ổ'
			return 'oz9'
		when 'ỗ'
			return 'oz91'
		when 'ộ'
			return 'oz92'
		when 'ơ'
			return 'oz93'
		when 'ờ'
			return 'oz94'
		when 'ớ'
			return 'oz95'
		when 'ở'
			return 'oz96'
		when 'ỡ'
			return 'oz97'
		when 'ợ'
			return 'oz98'
		when 'ù'
			return 'uz'
		when 'ú'
			return 'uz2'
		when 'ủ'
			return 'uz3'
		when 'ũ'
			return 'uz4'
		when 'ụ'
			return 'uz5'
		when 'ư'
			return 'uz6'
		when 'ừ'
			return 'uz7'
		when 'ứ'
			return 'uz8'
		when 'ử'
			return 'uz9'
		when 'ữ'
			return 'uz91'
		when 'ự'
			return 'uz92'
		when 'ỳ'
			return 'yz'
		when 'ý'
			return 'yz2'
		when 'ỷ'
			return 'yz3'
		when 'ỹ'
			return 'yz4'
		when 'ỵ'
			return 'yz5'
		else
			return word.downcase		
		end
	end
end