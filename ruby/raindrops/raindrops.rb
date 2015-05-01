class Fixnum
  def prime_factor_of?(number)
    number % self == 0
  end
end

class Raindrops
  SOUNDS_FOR_FACTORS = {
    '3' => 'Pling',
    '5' => 'Plang',
    '7' => 'Plong'
  }
  
  def self.convert(number)
    factors = SOUNDS_FOR_FACTORS.keys.map(&:to_i)
    
    factors.each_with_object(sound = '') do |factor|
      sound << SOUNDS_FOR_FACTORS[factor.to_s] if factor.prime_factor_of?(number)
    end
    
    sound.empty? ? number.to_s : sound
  end
end