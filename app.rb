require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # all_the_medicines = [
  #   <Medicine:0x007fb739b1af88 @id=1, @name="penicillin" @group="antibiotic">,
  #   <Medicine:0x007fb739b1af88 @id=2, @name="advil" @group="anti-inflammatory">,
  #   <Medicine:0x007fb739b1af88 @id=3, @name="benadryl" @group="anti-histamine">
  # ]

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    "#{@num1 * @num2}"
  end
end