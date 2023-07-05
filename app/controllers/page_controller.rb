class PageController < ApplicationController
  def home
  end

  def kontakt
  end

  def nas
  end

  def oplata
  end

  def usluga
     @uslugis = Uslugi.all
  end
end
