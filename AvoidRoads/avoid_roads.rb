class AvoidRoads

  def num_ways width, height, bad = []
    ways = Array.new(width + 1) { Array.new(height + 1, 0) }
    ways[0][0] = 1

    0.upto width do |i|
      0.upto height do |j|
        ways[i][j] += ways[i-1][j] if i > 0 and is_connected bad, i-1, j, i, j
        ways[i][j] += ways[i][j-1] if j > 0 and is_connected bad, i, j-1, i, j
      end
    end

    return ways[width][height]
  end

  def is_connected arr, i, j, m, n
    s1 = "#{i} #{j} #{m} #{n}"
    s2 = "#{m} #{n} #{i} #{j}"
    
    return false if arr.index s1
    return false if arr.index s2
    return true
  end

end