debug:
	cargo run

release:
	cargo run --release

wasm_release:
	cargo build --release --target wasm32-unknown-unknown
	wasm-bindgen target/wasm32-unknown-unknown/release/roguelike-rs.wasm --out-dir wasm --no-modules --no-typescript

serve:
	python3 -m http.server