
defmodule App2 do
  use Application
  
  def start _type, _args do
    IO.puts "App2 application started"
    App2.Supervisor.start_link
  end
  
end
