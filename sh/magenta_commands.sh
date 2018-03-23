# misc:
bazel run //magenta/models/performance_rnn:performance_rnn_generate -- --config='performance_with_dynamics' --bundle_file=/home/wgar/model-fte/code/sound/performance-rnn-ckpt/performance_with_dynamics.mag --output_dir=/home/wgar/generative-model-samples/audio/midi-output/polyphony-rnn/ --num_outputs=10 --num_steps=8000

bazel run //magenta/models/polyphony_rnn:polyphony_rnn_generate -- --config='performance_with_dynamics' --bundle_file=/home/wgar/model-fte/code/sound/performance-rnn-ckpt/performance_with_dynamics.mag --output_dir=./generated/no-primer/ --num_outputs=1 --num_steps=8000


# performance rnn:
bazel run //magenta/models/performance_rnn:performance_rnn_generate  -- \
--config='performance_with_dynamics' \
--bundle_file=/home/wgar/magenta/magenta/models/performance_rnn/performance_with_dynamics.mag \
--output_dir="/home/wgar/generative-model-samples/audio/midi-output/performance-rnn/performance_with_dynamics (unconditional)/primer/" \
--num_outputs=10 \
--num_steps=3000 \
--primer_melody="[60,62,64,65,67,69,71,72]"

bazel run //magenta/models/performance_rnn:performance_rnn_generate  -- \
--config='performance_with_dynamics' \
--bundle_file=/home/wgar/magenta/magenta/models/performance_rnn/performance_with_dynamics.mag \
--output_dir="/home/wgar/generative-model-samples/audio/midi-output/performance-rnn/performance_with_dynamics (unconditional)/no-primer/" \
--num_outputs=10 \
--num_steps=3000 \
--primer_melody=""

bazel run //magenta/models/performance_rnn:performance_rnn_generate  -- \
--config='multiconditioned_performance_with_dynamics' \
--bundle_file=/home/wgar/magenta/magenta/models/performance_rnn/performance_with_dynamics.mag \
--output_dir="/home/wgar/generative-model-samples/audio/midi-output/performance-rnn/multiconditioned_performance_with_dynamics (conditional)/primer/" \
--num_outputs=10 \
--num_steps=3000 \
--pitch_class_histogram="[2, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1]" \
--primer_melody="[60,62,64,65,67,69,71,72]"

bazel run //magenta/models/performance_rnn:performance_rnn_generate  -- \
--config='multiconditioned_performance_with_dynamics' \
--bundle_file=/home/wgar/magenta/magenta/models/performance_rnn/performance_with_dynamics.mag \
--output_dir="/home/wgar/generative-model-samples/audio/midi-output/performance-rnn/multiconditioned_performance_with_dynamics (conditional)/no-primer/" \
--num_outputs=10 \
--num_steps=3000 \
--pitch_class_histogram="[2, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1]" \
--primer_melody=""


# melody rnn:
bazel run //magenta/models/melody_rnn:melody_rnn_generate -- --config='attention_rnn' --bundle_file=/home/wgar/magenta/attention_rnn.mag --output_dir=/home/wgar/magenta/magenta/generated/melody/ --num_outputs=10 --num_steps=3000 --primer

bazel run //magenta/models/melody_rnn:melody_rnn_generate -- \
--config='attention_rnn' \
--bundle_file=/home/wgar/magenta/attention_rnn.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/melody-rnn/primer-C \
--num_outputs=10 \
--num_steps=128 \
--primer_melody="[60]"

bazel run //magenta/models/melody_rnn:melody_rnn_generate -- \
--config='attention_rnn' \
--bundle_file=/home/wgar/magenta/attention_rnn.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/melody-rnn/no-primer \
--num_outputs=10 \
--num_steps=128 \
--primer_melody=""


# improv rnn:
bazel run //magenta/models/improv_rnn:improv_rnn_generate -- \
--config='chord_pitches_improv' \
--bundle_file='/home/wgar/magenta/magenta/models/improv_rnn/chkpt/chord_pitches_improv.mag' \
--output_dir='/home/wgar/generative-model-samples/audio/midi-output/improv-rnn/primer-C/' \
--num_outputs=10 \
--primer_melody="[60]" \
--backing_chords="C G Am F C G Am F" \
--render_chords

bazel run //magenta/models/improv_rnn:improv_rnn_generate -- \
--config='chord_pitches_improv' \
--bundle_file='/home/wgar/magenta/magenta/models/improv_rnn/chkpt/chord_pitches_improv.mag' \
--output_dir='/home/wgar/generative-model-samples/audio/midi-output/improv-rnn/no-primer/' \
--num_outputs=10 \
--primer_melody="" \
--backing_chords="C G Am F C G Am F" \
--render_chords


# polyphony rnn:
bazel run //magenta/models/polyphony_rnn:polyphony_rnn_generate --  \
--bundle_file=/home/wgar/magenta/magenta/models/polyphony_rnn/polyphony_rnn.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/polyphony-rnn/no-primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_pitches="" \
--condition_on_primer=true \
--inject_primer_during_generation=false

bazel run //magenta/models/polyphony_rnn:polyphony_rnn_generate -- \
--bundle_file=/home/wgar/magenta/magenta/models/polyphony_rnn/polyphony_rnn.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/polyphony-rnn/primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_pitches="[67,64,60]" \
--condition_on_primer=true \
--inject_primer_during_generation=false


# drums rnn:
bazel run //magenta/models/drums_rnn:drums_rnn_generate -- \
--config='drum_kit' \
--bundle_file="/home/wgar/magenta/magenta/models/drums_rnn/drum_kit_rnn.mag" \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/drums-rnn/primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_drums="[(36,)]"

bazel run //magenta/models/drums_rnn:drums_rnn_generate -- \
--config='drum_kit' \
--bundle_file="/home/wgar/magenta/magenta/models/drums_rnn/drum_kit_rnn.mag" \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/drums-rnn/no-primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_drums=""


# pianoroll rnn-nade:
bazel run //magenta/models/pianoroll_rnn_nade:pianoroll_rnn_nade_generate -- \
--bundle_file=/home/wgar/magenta/magenta/models/pianoroll_rnn_nade/pianoroll_rnn_nade.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/pianoroll-rnn-nade/web-corpus/primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_pitches="[67,64,60]"

bazel run //magenta/models/pianoroll_rnn_nade:pianoroll_rnn_nade_generate -- \
--bundle_file=/home/wgar/magenta/magenta/models/pianoroll_rnn_nade/pianoroll_rnn_nade-bach.mag \
--output_dir=/home/wgar/generative-model-samples/audio/midi-output/pianoroll-rnn-nade/bach-corpus/primer/ \
--num_outputs=10 \
--num_steps=128 \
--primer_pitches="[67,64,60]"
