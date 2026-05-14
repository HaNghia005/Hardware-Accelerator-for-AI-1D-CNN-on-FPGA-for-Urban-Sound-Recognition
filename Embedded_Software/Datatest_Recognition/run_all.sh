total_correct=0
total_sound=0


for i in 1 2 3 4; do
    output=$(./main_$i)
    correct=$(echo "$output" | grep "Correct:" | awk '{print $2}')
    sound=$(echo "$output" | grep "Total sound:" | awk '{print $3}')
    echo "  main_$i Correct: $correct Num_Sound: $sound"
    total_correct=$((total_correct + correct))
    total_sound=$((total_sound + sound))
done

accuracy=$(echo "scale=2; $total_correct * 100 / $total_sound" | bc)
echo "========================================"
echo "Total sound:   $total_sound"
echo "Total correct: $total_correct"
echo "Accuracy:      $accuracy%"
echo "========================================"
