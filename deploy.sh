[ ! -z "$1" ] && status="$1" || status="update"
git add . && git commit -m "$status" && git push