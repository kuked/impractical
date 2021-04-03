module Dictionary
  def load(file)
    begin
      f = open(file)
      f.each_line(chomp: true).to_a
    rescue => e
      warn "#{e}\nError opening #{file}."
    end
  end
end
