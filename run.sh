input="demo_data/vid1b.mov"
OP_DIR="op_dir_$(date +%s)"
mkdir "$OP_DIR"
python3 extract_keyframes.py "$input" "$OP_DIR"
python3 chunk_and_persist.py "demo_collection" "$OP_DIR/text"
