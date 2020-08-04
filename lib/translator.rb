require 'yaml'
require 'pry'

def load_library
  yaml_library = YAML.load_file("lib/emoticons.yml")
  binding.pry
  library = yaml_library.collect do |key, value|
    binding.pry
    yaml_library[key] = {english: value[0], japanese: value[1]}
    binding.pry
  end
end

def get_japanese_emoticon
  library = load_library
end

def get_english_meaning
  # code goes here
end

binding.pry
