#! /bin/sh

# params:
#   $1 -> current
#   $2 -> total
rocket() {
  local total
  local current
  current="$1"
  total="$2"

  local step
  local dots
  local remaining

  step=$((total / 10))
	dots=$((current / step))

  printf "\r"
  printf "["
  for (( i = 0; i < $dots; i++ )); do
    printf "-"
  done

  remaining=$((10 - dots - 1))
	(( remaining > -1 )) && printf ">"
  for (( i = 0; i < $remaining; i++ )); do
    printf " "
  done

  printf "]"
}

rocket "$1" "$2"
