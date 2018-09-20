class Gameoflife
 
@defaul_n = 10

  def self.init(n)
    @n = n  
    @tab = Array.new(@n) { Array.new @n, rand(0..1) }
  end
  
  def self.view
    for i in(0...@tab.size)
      for j in (0...@tab.size)
        case @tab[i][j]
          when 0 then print " "
          when 1 then print "█"
        end
      end
      print "\n"
    end
  end

  def self.dieorlife(i,j,destiny)   
    if (destiny < 2)
      @tab[i][j] = 0
    elsif (destiny >= 2) && (destiny < 4)
        @tab[i][j] = 1
    end
    if (destiny >= 4)
        @tab[i][j] = 0      
    end
  end

  def self.game(i,j)
    x = i-1
    y = j-1
    c = 1
    count = 1   
    dol = 0
   while (c <= 9)
      if ((((x >= 0)&&(y >= 0))&& (y < @n) && (x < @n))&&((x != i)||(y != j)))
       if (@tab[x][y] == 1)
          dol += 1
        end
      end
      if (count == 3)
        x += 1
        y = j -1
        count = 0
      end
      count += 1
      c += 1
    end
    dieorlife(i,j,dol)
  end

  def self.consultar
    for i in(0...@n)
      for j in(0...@n)
        game(i,j)
      end
    end
  end


  def self.setN(n)
    @n = n  
  end

  def self.getN
      "Size: #{@n}" 
  end


end