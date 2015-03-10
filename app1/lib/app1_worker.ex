
defmodule App1.Worker do
  use GenServer
  
  def start_link do
    IO.puts "App1 worker started"
    GenServer.start_link __MODULE__, [], name: :app1_worker
  end
  
  def init [] do
    ping self
    {:ok, []}
  end
  
  def ping pid do
    GenServer.cast pid, :ping
  end
  
  def handle_cast :ping, state do
    IO.puts "App1 worker ping"
    :timer.sleep 10000
    ping self
    {:noreply, state}
  end
  
  def terminate _reason, _state do
    IO.puts "App1 worker terminated"
  end
  
end
