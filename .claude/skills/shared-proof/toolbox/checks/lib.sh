# Sourced helpers. Usage: fail "msg"; ...; finish
FAILS=0
fail() { echo "FAIL: $*" >&2; FAILS=$((FAILS+1)); }
finish() { [ "$FAILS" -eq 0 ] && exit 0 || exit 1; }
