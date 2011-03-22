module B64URL

  ALPHA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

  class << self

    def to_b64url(q)
      s = ''
      while q != 0
        q,r = q.divmod(64)
        s << ALPHA[r]
      end
      s.reverse!
    end

    def from_b64url(s)
      t,m = s.chars.to_a.reverse!.map!{|x| ALPHA.index(x)},1
      t.inject{|r,x| r+x*(m*=64)}
    end

  end

end

Integer.class_eval do

  def to_b64url
    B64URL.to_b64url(self)
  end

end

String.class_eval do

  def from_b64url
    B64URL.from_b64url(self)
  end

end