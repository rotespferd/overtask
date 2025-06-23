dev:
	cargo watch -x check -x test -x run
check:
	cargo check
check-watch:
	cargo watch -x check
