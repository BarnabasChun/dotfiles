function exists() {
  # command -v is similar to `which`
  # if the command is successful will produce exit code of 0, else 1
  # redirect stderror & stdoutput to /dev/null to supress output from command; status
  command -v "$1" &> /dev/null
}