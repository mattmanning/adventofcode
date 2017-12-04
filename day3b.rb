N = 347991

class String
  def -(x)
    (self.to_i - x).to_s
  end

  def +(x)
    (self.to_i + x).to_s
  end
end

class NilClass
  def [](x)
    0
  end
end

def getsum(grid, x, y)
  [ grid[x+1][y],
    grid[x+1][y+1],
    grid[x][y+1],
    grid[x-1][y+1],
    grid[x-1][y],
    grid[x-1][y-1],
    grid[x][y-1],
    grid[x+1][y-1]
  ].compact.sum
end

x = '0'
y = '0'

grid = {}
grid[x] = {}
grid[x][y] = 1

direction = 'right'

until grid[x][y] > N do
  case direction
  when 'right'
    x += 1
    if grid[x].nil?
      grid[x] = {}
      direction = 'up'
    end
  when 'up'
    y += 1
    direction = 'left' if grid[x-1][y].nil?
  when 'left'
    x -= 1
    if grid[x].nil?
      grid[x] = {}
      direction = 'down'
    end
  when 'down'
    y -= 1
    direction = 'right' if grid[x+1][y].nil?
  end
  grid[x][y] = getsum(grid,x,y)
  n = grid[x][y]
end

puts grid[x][y]