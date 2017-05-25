# Cheat sheet
List of commands that are used ocassionaly
## tmux
| Command                 | Description| 
| ------------------------|------------| 
| `setw synchronize-panes`|Sycronize input on all panes in current window|
## vim
|Command        |Description|
|---------------|-----------|
|`:%s/foo/bar/g`|Find each occurrence of 'foo' (in all lines), and replace it with 'bar'|
|`caw`          |Change the entire word even if pointer is not at the start of the word|
|`<CTRL-V>{motion}I{text}`|Insert {text} before block on every line|
|`<CTRL-V>{motion}A{text}`|Appends {text} after block on every line|
|`<CTRL-V>{motion}c{text}`|Changes every line of block to {text}|
|`<CTRL-V>{motion}r{char}`|Changes every character of block to {char}|
|`yas, yap`|Copy entire sentence, paragraph the cursor is inside|
|`ya{`|Copy entire block of text inside block delimeters - {}, (), [], <>, \"", ''. ``|
## git
| Command               | Description| 
| ----------------------|------------| 
| `git remote -v update`|Check if local branches are up to date with remote branches|
|`git status -uno`      |Check if local branch is ahead or behind. Should be run after above command|
