-- tmux (~/.tmux.conf)
rex.bind("ctrl+space>h", "pane.focus", { direction = "left" })
rex.bind("ctrl+space>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+space>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+space>l", "pane.focus", { direction = "right" })

rex.action{
  name  = "new_branch",
  title = "Git: New Branch…",
  run   = function(ctx, args)
      local choice = rex.ui.pick{ title = "Pick a fruit", items = { "Apple", "Banana", "Cherry" } }
  end,
}

rex.bind("alt+cmd+b", "new_branch")
