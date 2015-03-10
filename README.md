Multiple Applications On One VM
===============================

This tests running multiple Elixir [Application](http://elixir-lang.org/docs/v1.0/elixir/Application.html)s
on a single VM.

From the app2 directory:
`iex -S mix`

Play with these in iex:
* `Application.start :app1`
* `Application.stop  :app1`
* `:erlang.exit :erlang.whereis(:app1_worker), :kill`
