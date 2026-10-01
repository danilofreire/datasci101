#!/usr/bin/env bash
# Builds the local student-id list used by the pre-commit guard.
# Reads Canvas user ids from the PRIVATE emory-answer-keys repo and writes
# them OUTSIDE this repo, so they are never committed here.
#
# Usage: .githooks/update-student-ids.sh /path/to/emory-answer-keys

set -euo pipefail

SRC="${1:?Usage: $0 /path/to/emory-answer-keys}"
OUT="${DATASCI101_STUDENT_IDS:-$HOME/.config/datasci101/student-ids.txt}"
GRADING="$SRC/datasci101/grading"

[ -d "$GRADING" ] || { echo "No grading folder at $GRADING" >&2; exit 1; }
mkdir -p "$(dirname "$OUT")"

{
    # Canvas user ids from every meta.json
    find "$GRADING" -name meta.json -print0 | xargs -0 -r cat \
        | grep -oE '"user_id"[[:space:]]*:[[:space:]]*[0-9]{5,}' | grep -oE '[0-9]{5,}'
    # Ids used as file names (by_student/<id>.pdf, comments/<id>.md, a03/<id>.md, ...)
    find "$GRADING" -type f | sed -E 's#.*/##' | grep -oE '^[0-9]{6,}' || true
} | sort -u > "$OUT"

chmod 600 "$OUT"
echo "Wrote $(wc -l < "$OUT") student ids to $OUT"
