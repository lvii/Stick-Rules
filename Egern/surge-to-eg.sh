#!/bin/bash

if [ $# -eq 1 ]
then
    URL="$1"

    # FILE="/tmp/$(date +'%F_%T').txt"
    TIME="$(date +'%F_%T'| sed 's/:/-/g')"
    FILE="/tmp/$(echo "$URL" | awk -F '/' '{print $NF}')"
    EGERN_FILE="/tmp/egern-${TIME}.yaml"

    if [ -s "$FILE" ]
    then
        :
    else
        if curl -m5 -f#L "$URL" -o "$FILE"
        then
            :
        else
            echo "__ERROR: download '$URL' FAILED"
            exit 1
        fi
    fi

    echo "__INFO: $FILE $EGERN_FILE"

    echo "---
    # SOURCE: $URL
    # UPDATE: $(date +%F)
    no_resolve: true
    domain_set:" | sed -e 's/^\s\+//g' > "$EGERN_FILE"

    # awk -F , '/\<DOMAIN\>/{print "\""$2"\""}'  | sed 's/^/  - /g' >> "$EGERN_FILE"
    awk -F , '/^\<DOMAIN\>\s*,/{print $2}' "$FILE" | sed -E -e 's/^[[:space:]]+|[[:space:]]+$//' -e 's/^/  - /g' >> "$EGERN_FILE"

    echo "domain_suffix_set:" >> "$EGERN_FILE"
    awk -F , '/^\<DOMAIN-SUFFIX\>\s*,/{print $2}' "$FILE" | sed -E -e 's/^[[:space:]]+|[[:space:]]+$//' -e 's/^/  - /g' >> "$EGERN_FILE"

    echo "domain_keyword_set:" >> "$EGERN_FILE"
    awk -F , '/^\<DOMAIN-KEYWORD\>\s*,/{print "\""$2"\""}' "$FILE" | sed -E -e 's/^[[:space:]]+|[[:space:]]+$//' -e 's/^/  - /g' >> "$EGERN_FILE"


    echo "ip_cidr_set:" >> "$EGERN_FILE"
    awk -F , '/^\<IP-CIDR\>\s*,/{print $2}' "$FILE" | sed -E -e 's/^[[:space:]]+|[[:space:]]+$//' -e 's/^/  - /g' >> "$EGERN_FILE"

else
    echo "USAGE: $(basename "$0") URL"
fi
