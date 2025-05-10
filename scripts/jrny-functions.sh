# jrny-cli/scripts/jrny-functions.sh

# Returns 0 if github.com is reachable, non-zero otherwise
is_online() {
  local host="github.com"
  case "$(uname -s)" in
    MINGW*|MSYS*|CYGWIN*)
      # Windows ping: -n 1 (count), -w 1000 (timeout in ms)
      ping -n 1 -w 1000 "$host" > /dev/null 2>&1
      ;;
    *)
      # Unix ping: -c 1 (count), -W 1 (timeout in s)
      ping -c 1 -W 1 "$host" > /dev/null 2>&1
      ;;
  esac
}
