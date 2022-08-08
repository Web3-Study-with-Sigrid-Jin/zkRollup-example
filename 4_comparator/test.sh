set -e

echo "compiling good"
circom force_equal_if_enabled.circom --r1cs --wasm --sym

echo "compiling bad"
circom bad_force_equal_if_enabled.circom --r1cs --wasm --sym