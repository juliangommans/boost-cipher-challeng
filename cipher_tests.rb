require 'test/unit'
require 'atbash_cipher'

class TestAtbashCipher < Test::Unit::TestCase

	def decrypt_car
		key = "zodvqukgwefbyitmrsplhacxnj"
		message = "dzs"
		assert_equal("car", AtbashCipher.new(key).decrypt(message), "Failed to decrypt message: 'car'")
	end

	def encrypt_car
		key = "zodvqukgwefbyitmrsplhacxnj"
		message = "car"
		assert_equal("dzs", AtbashCipher.new(key).encrypt(message), "Failed to encrypt message: 'dzs'")
	end

	def decrypt_question
		key = "xipmuzfkbrlwotjancqgveshdy"
		message = "skd qj qucbjvq?"
		assert_equal("why so serious?", AtbashCipher.new(key).decrypt(message), "Failed to decrypt message: 'why so serious?'")
	end

	def encrypt_question
		key = "xipmuzfkbrlwotjancqgveshdy"
		message = "why so serious?"
		assert_equal("skd qj qucbjvq?", AtbashCipher.new(key).encrypt(message), "Failed to encrypt message: 'why so serious?'")
	end
end