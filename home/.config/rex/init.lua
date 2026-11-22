-- tmux (~/.tmux.conf)
rex.bind("ctrl+space>h", "pane.focus", { direction = "left" })
rex.bind("ctrl+space>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+space>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+space>l", "pane.focus", { direction = "right" })

rex.action{
  name  = "scratch",
  title = "Open Scratch Window",
  run   = function(ctx, args)
    rex.session.new_window{
      layout = rex.layout.block{
        flavor = "com.superlogical.terminal.shell",
      },
    }
  end,
}

rex.bind("shift+cmd+n", "scratch")
