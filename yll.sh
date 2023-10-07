find node_modules node_modules/\@* -depth 1 -type l -print | while read MODULE; do
  echo "Linked module in use: $MODULE"
done
