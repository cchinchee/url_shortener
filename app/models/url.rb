class Url < ApplicationRecord
	validates :long_url, format: { with: /(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?/, message: "Invalid URL!"}

	def shorten
        self.short_url = SecureRandom.urlsafe_base64(4)
    end
end
