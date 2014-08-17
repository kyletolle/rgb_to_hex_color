class RgbToHexColor
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def rgb
    [ @r, @g, @b ]
  end

  def valid?
    r_is_valid? && g_is_valid? && b_is_valid?
  end

  def hex
    if valid?
      hex_string
    end
  end

private
  def r_is_valid?
    is_valid_color_digit?(@r)
  end

  def g_is_valid?
    is_valid_color_digit?(@g)
  end

  def b_is_valid?
    is_valid_color_digit?(@b)
  end

  def is_valid_color_digit?(digit)
    (0..255).include? digit
  end

  def hex_string
    hex_r = decimal_to_hex(@r)
    hex_g = decimal_to_hex(@g)
    hex_b = decimal_to_hex(@b)

    "##{hex_r}#{hex_g}#{hex_b}"
  end

  def decimal_to_hex(digit)
    digit.to_s(16).
      rjust(2, '0').
      upcase
  end
end

