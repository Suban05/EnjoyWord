module TheFreeDictionary
  class SpanishAudio
    def pronunciation(statement)
      TheFreeDictionary::Pronunciation.get do |config|
        config.statement = statement
        config.language = "es"
        config.region = /(EU|LA)/
      end
    end
  end
end
