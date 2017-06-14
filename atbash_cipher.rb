class AtbashCipher
	attr_reader :constant, :cipher
	ALPHACONST = "abcdefghijklmnopqrstuvwxyz"

	def initialize(cipher, constant = nil)
		@cipher = cipher
		@constant = constant || ALPHACONST
	end

	def encrypt(message)
		crack_the_code(cipher, constant, message)
	end

	def decrypt(message)
		crack_the_code(constant, cipher, message)
	end

	private

	def crack_the_code(master, key, message)
		message.chars.map{ |char| constant.include?(char) ? master[key.index(char)] : char }.join
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