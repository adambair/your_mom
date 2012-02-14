class YourMom
  def initialize
    @path = File.join(File.dirname(__FILE__), "dumb.txt")
  end

  def is_so_dumb
    data[rand(data.length)].strip
  end
  alias isd is_so_dumb

  def data
    return @data if @data
    f = File.open(@path)
    @data ||= f.readlines
  end
end
