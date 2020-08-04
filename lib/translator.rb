require 'yaml'
require 'pry'

def load_library(filepath)
  library = YAML.load_file(filepath).collect do |key, value|
    [key, {english: value[0], japanese: value[1]}]
  end
  library.to_h
end

def get_japanese_emoticon(library, emoticon)
  library.find do |key, value|
    library[key][:japanese] == emoticon
  end
end

def get_english_meaning
  # code goes here
end
