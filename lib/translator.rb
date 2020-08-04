require 'yaml'
require 'pry'

def load_library
  library = YAML.load_file("lib/emoticons.yml").collect do |key, value|
    [key, {english: value[0], japanese: value[1]}]
  end
  library.to_h
end

def get_japanese_emoticon
  library = load_library
end

def get_english_meaning
  # code goes here
end

binding.pry
