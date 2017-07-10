class Post


  def initialize
    @created_at  = Time.now
    @text = nil
  end

  def read_frome_console
     #todo

  end

  def to_string

  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in strings do
      file.puts(item)
    end
    file.close

    def file_path
      current_path = File.dirname(_FILE_)

      file_name = @created_at.strftime("#{self.class.name} %Y-%m-%d_%H-%M-%S.txt")

      return current_path +"/" +file_name
    end
  end
end
