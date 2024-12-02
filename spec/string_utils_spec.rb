require "spec_helper"
require "string_utils"

RSpec.describe StringUtils do
  it "converts snake_case to camelCase" do
    expect(StringUtils.to_camel_case('hello_world')).to eq('helloWorld')
  end

  it "converts string to kebab-case" do
    expect(StringUtils.to_kebab_case('hello_world')).to eq('hello-world')
  end

  it "capitalizes words correctly in title case" do
    expect(StringUtils.title_case('the quick brown fox jumps over')).to eq('The Quick Brown Fox Jumps Over')
  end

  it "reverses the words in a sentence" do
    expect(StringUtils.reverse_words('The quick brown fox')).to eq('fox brown quick The')
  end

  it "converts string to snake-case" do
    expect(StringUtils.to_camel_case('hello_world')).to eq('helloWorld')
  end
end
