require 'yaml'
require 'pry'

def load_library
  library = YAML.load_file("lib/emoticons.yml")
end

def get_japanese_emoticon
  library = load_library
end

def get_english_meaning
  # code goes here
end

binding.pry
