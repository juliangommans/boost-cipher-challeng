class AtbashCipher
	attr_reader :cipher
	CONSTANT = "abcdefghijklmnopqrstuvwxyz"

	def initialize(cipher)
		@cipher = cipher
	end

	def encrypt(message)
		crack_the_code(cipher, CONSTANT, message)
	end

	def decrypt(message)
		crack_the_code(CONSTANT, cipher, message)
	end

	private

	def crack_the_code(master, key, message)
		code = message.chars.map do |char|
			if CONSTANT.include?(char)
				master[key.index(char)]
			else
				char
			end
		end
		code.join("")
	end
end

cipher = "oephjizkxdawubnytvfglqsrcm"
message = "knlfgnb, sj koqj o yvnewju"
decrypt = AtbashCipher.new(cipher).decrypt(message)
puts " --- decrypted message --- "
puts decrypt
message = "houston, we have a problem"
encrypt = AtbashCipher.new(cipher).encrypt(message)
puts " --- encrypted message --- "
puts encrypt