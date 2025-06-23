install-dev-tools:
	rustup component add clippy
	rustup component add llvm-tools-preview
	cargo install cargo-llvm-cov
	rustup component add rustfmt
	cargo install cargo-audit
dev:
	cargo watch -x check -x test -x run
check:
	cargo check
check-watch:
	cargo watch -x check
lint:
	cargo clippy
fmt:
	cargo fmt
audit:
	cargo audit
check-all: check lint fmt audit
