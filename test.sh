#!/usr/bin/env bash

generate_branch_name() {
  wtd --utc --iso \
  | sed -e 's/[T:]/-/g'
}

main() {
  local branch_name

  branch_name="$(generate_branch_name)"

  git checkout -b "$branch_name" \
  && git push --set-upstream origin "$branch_name" \
  && git checkout master \
  && sleep 30 \
  && git push origin ":$branch_name" \
  && git branch -D "$branch_name" \
  && osascript -e 'display notification "Branch Deleted" with title "test.sh"'
}
main "$@"
