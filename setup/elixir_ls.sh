#!/bin/sh
 cd submodules/elixir-ls
 asdf install
 mix deps.get 
 mix compile 
 mix elixir_ls.release -o release
