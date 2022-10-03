set -e

# Although circom’s parser (see parser/jaz.jison) supports if statements, because circom compiles the DSL into arithmetic circuits, circuits whose behavior depends on the value of an input can have unexpected behavior.
echo "compiling good"
circom force_equal_if_enabled.circom --r1cs --wasm --sym

# There are constraints depending on the value of the condition and it can be unknown during the constraint generation phase
echo "compiling bad"
circom bad_force_equal_if_enabled.circom --r1cs --wasm --sym
