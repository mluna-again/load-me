#! /bin/sh

# params:
#   $1 -> current
#   $2 -> total
bar() {
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
    printf "*"
  done

  remaining=$((10 - dots))
  for (( i = 0; i < $remaining; i++ )); do
    printf " "
  done

  printf "]"
}

bar "$1" "$2"
