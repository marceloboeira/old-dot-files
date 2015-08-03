function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _git_is_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l magenta (set_color magenta)
  set -l yellow (set_color yellow)
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)
  set -l user_and_host $blue(whoami)@(hostname|cut -d . -f 1)
  set -l short_path $green(prompt_pwd)
  
  # Show git branch and status
  if [ (_git_branch_name) ]
      set -l git_branch (_git_branch_name)
    if [ (_git_is_dirty) ]
      set git_info $yellow "($git_branch±)"
    else
      set git_info $normal "($git_branch)"
    end
  end

  # show ruby version
  set -l ruby_info
  if which rvm >/dev/null ^&1
    set ruby_info $red'['(rvm current)']'
  end
  set -l time_info $normal (date "+%H:%M")' |'
  
  echo "$ruby_info $short_path$git_info$end_symbol"$normal" \$ "
end