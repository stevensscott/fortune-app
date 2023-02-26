class MyExamplesController < ApplicationController
  #methods here

  def get_fortune
    fortunes=["You'll have a good day","You'll have a great day","Just go back to bed"]
    num=rand(0..2)
    render json: {message: fortunes[num]}
  end

  def get_lotto_numbers    
    
    lotto_numbers=[]
    6.times do
      num=rand(1..60)
      lotto_numbers << num
    end
    
    #Rendor json, format not great
    # render json: {message: "Here are your 6 luck numbers:",number1: lotto_numbers[0],
    #     number2: lotto_numbers[1],
    #     number3: lotto_numbers[2],
    #     number4: lotto_numbers[3],
    #     number5: lotto_numbers[4],
    #     number6: lotto_numbers[5]}

    render html: "Here are your numbers :
    <br> Number 1: #{lotto_numbers[1]}
    <br> Number 2 : #{lotto_numbers[2]}   
    <br> Number 3: #{lotto_numbers[3]}
    <br> Number 4: #{lotto_numbers[4]}
    <br> Number 5: #{lotto_numbers[5]}
    <br> Number 6: #{lotto_numbers[0]}   
    ".html_safe

    # render html: lotto_numbers.length.times do |i|
    # "<br> Number 1: #{lotto_numbers[i]}".html_safe
    # end
   




     
  end
end
