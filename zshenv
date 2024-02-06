function exists() {
  # command -v is similar to `which`
  # 1>/dev/null: redirects standard output (stdout implicitly representeds by 1) to /dev/null, essentially discarding any output from the command.
  # 2>&1: redirects standard error (stderr represented by 2) to the same location as stdout
  # if the command is successful will produce exit code of 0, else 1
  command -v $1 >/dev/null 2>&1

  # More explicitly: command -v $1 1>/dev/null 2>/dev/null
}