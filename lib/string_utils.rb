# frozen_string_literal: true

require_relative "string_utils/version"

# string utils class
module StringUtils
  def self.to_camel_case(str)
    str.split("_").map.with_index { |word, i| i.zero? ? word : word.capitalize }.join
  end

  def self.to_kebab_case(str)
    str.gsub(/_/, "-").downcase
  end

  def self.title_case(str)
    little_words = %w[and or the a an in on at]
    words = str.split(" ")
    words.map.with_index do |word, index|
      index.zero? || !little_words.include?(word.downcase) ? word.capitalize : word.downcase
    end.join(" ")
  end

  def self.reverse_words(str)
    str.split(" ").reverse.join(" ")
  end

  def self.to_snake_case(str)
    str.gsub(/([A-Z])/, '_\1').gsub(/[-\s]/, "_").downcase.sub(/^_/, "")
  end
end
