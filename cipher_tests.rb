require_relative 'atbash_cipher.rb'
require "test/unit"

class TestAtbashCipher < Test::Unit::TestCase
	def test_decrypt_car
		cipher = "zodvqukgwefbyitmrsplhacxnj"
		message = "dzs"
		assert_equal("car", AtbashCipher.new(cipher).decrypt(message), "Failed to decrypt message: 'car'")
	end

	def test_encrypt_car
		cipher = "zodvqukgwefbyitmrsplhacxnj"
		message = "car"
		assert_equal("dzs", AtbashCipher.new(cipher).encrypt(message), "Failed to encrypt message: 'dzs'")
	end

	def test_decrypt_question
		cipher = "xipmuzfkbrlwotjancqgveshdy"
		message = "skd qj qucbjvq?"
		assert_equal("why so serious?", AtbashCipher.new(cipher).decrypt(message), "Failed to decrypt message: 'why so serious?'")
	end

	def test_encrypt_question
		cipher = "xipmuzfkbrlwotjancqgveshdy"
		message = "why so serious?"
		assert_equal("skd qj qucbjvq?", AtbashCipher.new(cipher).encrypt(message), "Failed to encrypt message: 'skd qj qucbjvq?'")
	end

	def test_decrypt_final_solution
		cipher = "oephjizkxdawubnytvfglqsrcm"
		message = "knlfgnb, sj koqj o yvnewju"
		assert_equal("houston, we have a problem", AtbashCipher.new(cipher).decrypt(message), "Failed to decrypt message: 'houston, we have a problem'")
	end

	def test_encrypt_final_solution
		cipher = "oephjizkxdawubnytvfglqsrcm"
		message = "houston, we have a problem"
		assert_equal("knlfgnb, sj koqj o yvnewju", AtbashCipher.new(cipher).encrypt(message), "Failed to encrypt message: 'knlfgnb, sj koqj o yvnewju'")
	end
end