import os
import math

# CONFIG
X_PATH = "X.txt"
Y_PATH = "Y.txt"
WEIGHTS_PATH = "Float_Weights.txt"

OUTPUT_DATA_C = "input_data.c"
OUTPUT_WEIGHTS_C = "weights.c"

FEATURE_DIM = 40
TIME_STEPS = 173

# FLOAT -> Q16.16
def float_to_fixed(val):
    fixed = int(round(val * 65536.0))

    # Saturation (giống ap_fixed<32,16>)
    if fixed > 0x7FFFFFFF:
        fixed = 0x7FFFFFFF
    elif fixed < -0x80000000:
        fixed = -0x80000000

    return fixed & 0xFFFFFFFF

# X.txt + Y.txt -> input_data.c
def generate_input_data_c(x_path, y_path, output_file,
                         feature_dim, time_steps):

    with open(x_path, 'r') as fx:
        x_vals = [float(line.strip()) for line in fx if line.strip()]

    with open(y_path, 'r') as fy:
        labels = [int(line.strip()) for line in fy if line.strip()]

    values_per_sample = feature_dim * time_steps

    if len(x_vals) % values_per_sample != 0:
        raise ValueError(" X.txt không đúng kích thước!")

    num_samples = len(x_vals) // values_per_sample

    if len(labels) != num_samples:
        raise ValueError(" Số label không khớp số sample!")

    print(f" Samples: {num_samples}")

    with open(output_file, 'w') as f:
        f.write("// Auto-generated input data\n\n")
        f.write("#include <stdint.h>\n\n")

        f.write(f"#define NUM_SAMPLES {num_samples}\n")
        f.write(f"#define FEATURE_DIM {feature_dim}\n")
        f.write(f"#define TIME_STEPS {time_steps}\n\n")

        # Labels
        f.write("const uint8_t input_labels[NUM_SAMPLES] = {\n    ")
        for i, lbl in enumerate(labels):
            f.write(str(lbl))
            if i < len(labels) - 1:
                f.write(", ")
            if (i + 1) % 16 == 0:
                f.write("\n    ")
        f.write("\n};\n\n")

        # Data Q16.16
        f.write("// Q16.16 fixed-point\n")
        f.write("const int32_t input_data[NUM_SAMPLES][FEATURE_DIM * TIME_STEPS] = {\n")

        for n in range(num_samples):
            f.write(f"    {{  // Sample {n}\n")
            start = n * values_per_sample
            sample = x_vals[start:start + values_per_sample]

            for i, val in enumerate(sample):
                if i % 8 == 0:
                    f.write("        ")

                fixed = float_to_fixed(val)
                f.write(f"0x{fixed:08X}")

                if i < len(sample) - 1:
                    f.write(", ")
                    if (i + 1) % 8 == 0:
                        f.write("\n")

            f.write("\n    }")
            if n < num_samples - 1:
                f.write(",\n")
            else:
                f.write("\n")

        f.write("};\n")

    print(f" Generated {output_file}")

# Weights.txt -> weights.c
def generate_weights_c(weights_path, output_file):

    with open(weights_path, 'r') as f:
        weights = [float(x) for x in f.read().split() if x.strip()]

    print(f" Total weights: {len(weights)}")

    with open(output_file, 'w') as f:
        f.write("// Auto-generated weights\n\n")
        f.write("#include <stdint.h>\n\n")

        f.write(f"#define NUM_WEIGHTS {len(weights)}\n\n")

        f.write("// Q16.16 fixed-point\n")
        f.write("const int32_t weights[NUM_WEIGHTS] = {\n")

        for i, w in enumerate(weights):
            if i % 8 == 0:
                f.write("    ")

            fixed = float_to_fixed(w)
            f.write(f"0x{fixed:08X}")

            if i < len(weights) - 1:
                f.write(", ")
                if (i + 1) % 8 == 0:
                    f.write("\n")

        f.write("\n};\n")

    print(f"Generated {output_file}")
    
# MAIN
def main():
    generate_input_data_c(X_PATH, Y_PATH, OUTPUT_DATA_C,
                          FEATURE_DIM, TIME_STEPS)

    generate_weights_c(WEIGHTS_PATH, OUTPUT_WEIGHTS_C)

if __name__ == "__main__":
    main()
