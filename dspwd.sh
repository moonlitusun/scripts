current_date=$(date +%Y%m%d)
current_timestamp=$(date -j -f "%Y%m%d" "$current_date" "+%s")
previous_timestamp=$((current_timestamp - 86400))
previous_date=$(date -j -f "%s" "$previous_timestamp" "+%Y%m%d")
result="SZ${previous_date}Dz%"

echo $result
