# imports
import os
import csv
import sys
from transformers import T5Tokenizer, T5ForConditionalGeneration

# parse arguments
input_file = sys.argv[1]
output_file = sys.argv[2]

# local copy of laituan245/molt5-large-smiles2caption (Hugging Face revision e307e7a1f959d4c9ba6553ce656440cd5d3b4660)
root = os.path.dirname(os.path.abspath(__file__))
checkpoints_dir = os.path.abspath(os.path.join(root, "..", "..", "checkpoints", "molt5-large-smiles2caption"))

# model to be run 
def my_model(smiles_list):
    tokenizer = T5Tokenizer.from_pretrained(checkpoints_dir, model_max_length=512, local_files_only=True)
    model = T5ForConditionalGeneration.from_pretrained(checkpoints_dir, local_files_only=True)
    captions = []
    for smiles in smiles_list:
        input_ids = tokenizer(smiles, return_tensors="pt").input_ids
        output = model.generate(input_ids, num_beams=5, max_length=512)
        captions.append(tokenizer.decode(output[0], skip_special_tokens=True))
    return captions
    
# read SMILES from .csv file, assuming one column with header
with open(input_file, "r") as f:
    reader = csv.reader(f)
    next(reader) # skip header
    smiles_list = [r[0] for r in reader]
    
# run model
outputs = my_model(smiles_list)

# write output in a .csv file
with open(output_file, "w") as f:
    writer = csv.writer(f)
    writer.writerow(["mol_description"]) # header
    for o in outputs:
        writer.writerow([str(o)])
