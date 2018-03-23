# non-gc 
python generate.py --samples 64000 logdir/train/2017-12-04T13-48-11/model.ckpt-12000 --wav_out_path=generated.wav

# gc
python generate.py --samples 64000 logdir/train/2017-12-04T13-48-11/model.ckpt-12000 --wav_out_pat
h=generated.wav --gc_channels=32 --gc_cardinality=377 --gc_id=300
