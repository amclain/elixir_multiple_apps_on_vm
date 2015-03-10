
defmodule App1.Supervisor do
  use Supervisor
  
  def start_link do
    IO.puts "App1 supervisor started"
    Supervisor.start_link __MODULE__, [], name: :app1_supervisor
  end
  
  def init [] do
    children = [
      worker(App1.Worker, [])
    ]
    
    supervise children,
      strategy: :one_for_one,
      max_restarts: 2,
      max_seconds: 3600
  end

end
