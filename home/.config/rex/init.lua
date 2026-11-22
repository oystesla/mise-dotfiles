-- tmux (~/.tmux.conf)
rex.bind("ctrl+space>h", "pane.focus", { direction = "left" })
rex.bind("ctrl+space>j", "pane.focus", { direction = "down" })
rex.bind("ctrl+space>k", "pane.focus", { direction = "up" })
rex.bind("ctrl+space>l", "pane.focus", { direction = "right" })

rex.action{
  name  = "open_workspace",
  title = "Workspace: Open",
  run   = function(ctx, args)
    local name, why = rex.ui.input{
      title       = "New branch",
      placeholder = "feature/…",
      value       = "feature/",
      confirm     = "Create branch",
    }
    if name == nil then return end

    -- Type the command at the focused terminal's prompt.
    rex.block.call("com.superlogical.terminal", "write", {
      data = "git switch -c " .. name .. "\r",
    })
  end,
}
rex.bind("alt+cmd+b", "new_branch")
