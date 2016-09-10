class PagesController < ApplicationController
  def home
    @variable = 777;
  end

  def test
    @variable = "hello world";
  end
end
