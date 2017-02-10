class Hamming
  def compute(strand_1, strand_2)
    if strand_1 == strand_2 && strand_1.length == strand_2.length
      return 0
    elsif strand_1.length == strand_2.length
      counter = 0
      strand_1_each = strand_1.chars
      strand_2_each = strand_2.chars
      strand_1_each.each_with_index do |nucleotide, index|
        if nucleotide == strand_2_each[index]
          next
        else
          counter += 1
        end
      end
    else
      raise ArgumentError.new("Strands do not match in length.")
    end
    counter
  end
end
