
defmodule App1 do
  use Application
  
  def start _type, _args do
    IO.puts "App1 application started"
    App1.Supervisor.start_link
  end
  
end
