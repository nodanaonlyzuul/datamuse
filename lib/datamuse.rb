require 'datamuse/version'
require 'word'
require 'http'
require 'json'
require 'addressable/uri'

class Datamuse
  attr_reader :results

  # Options:
  # :rhymes_with  = A string
  # :max          = Maximum results
  def initialize(options = {})
    @rhymes_with = options[:rhymes_with]
    @relates_to  = options[:related_to]
    @max         = (options[:max] || "100").to_s
    @results     = nil
  end

  def get_rhymes
    params = {"rel_rhy" => @rhymes_with, "ml" => @relates_to, "max" => @max}
    params.delete_if{|k,v| v.nil? || v.gsub(" ", "").empty? }

    uri = Addressable::URI.new
    uri.query_values = params

    response = JSON.parse(HTTP.get("https://api.datamuse.com/words?#{uri.query}").to_s)
    @results = response.map{ |hash| Word.new(hash) }
  end
end
