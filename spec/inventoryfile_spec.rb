require 'spec_helper'

describe Inventoryfile do
  it 'has a version number' do
    expect(Inventoryfile::VERSION).not_to be nil
  end

  it 'parses web-servers section' do
    expected = ["web01", "web02", "web03"]
    parser = Inventoryfile::Parser.new("spec/testdata")
    parser.parse("web-servers").each_with_index do |item, k|
      expect(item).to eq(expected[k])
    end
  end

  it 'parses db-servers section' do
    expected = ["db01", "db03"]
    parser = Inventoryfile::Parser.new("spec/testdata")
    parser.parse("db-servers").each_with_index do |item, k|
      expect(item).to eq(expected[k])
    end
  end

  it 'parses cache-servers section' do
    expected = ["cache01", "cache02", "cache03"]
    parser = Inventoryfile::Parser.new("spec/testdata")
    parser.parse("cache-servers").each_with_index do |item, k|
      expect(item).to eq(expected[k])
    end
  end
end
