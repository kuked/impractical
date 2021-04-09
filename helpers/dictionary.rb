module Dictionary
  def load(file, exclude=[])
    begin
      f = open(file)
      f.each_line(chomp: true).to_a.reject { |w| exclude.include? w }
    rescue => e
      warn "#{e}\nError opening #{file}."
    end
  end
end
