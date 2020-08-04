require 'yaml'
require 'pry'

def load_library
  yaml_library = YAML.load_file("lib/emoticons.yml")
  library = yaml_library.collect do |key, value|
    yaml_library[key] = {english: value[0], japanese: value[1]}
  end
end

def get_japanese_emoticon
  library = load_library
end

def get_english_meaning
  # code goes here
end

binding.pry
