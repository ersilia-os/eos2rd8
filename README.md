# MolT5-Translation between Molecules and Natural Language

MolT5 (Molecular T5) is a self-supervised learning framework pretrained on unlabeled natural language text and molecule strings with two end goals: molecular captioning (given a molecule, generate its description) and text-based de novo molecular generation (given a description, propose a molecule that matches it). This implementation is focused on molecular captioning.

This model was incorporated on 2022-11-14.


## Information
### Identifiers
- **Ersilia Identifier:** `eos2rd8`
- **Slug:** `molt5-smiles-to-caption`

### Domain
- **Task:** `Representation`
- **Subtask:** `Featurization`
- **Biomedical Area:** `Any`
- **Target Organism:** `Any`
- **Tags:** `Chemical language model`, `Chemical notation`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `1`
- **Output Consistency:** `Fixed`
- **Interpretation:** Description of a molecule

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| mol_description | string |  | Text description of the molecule |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `External`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos2rd8](https://hub.docker.com/r/ersiliaos/eos2rd8)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2rd8.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2rd8.zip)

### Resource Consumption
- **Model Size (Mb):** `1`
- **Environment Size (Mb):** `1203`
- **Image Size (Mb):** `1144.3`

**Computational Performance (seconds):**
- 10 inputs: `136.92`
- 100 inputs: `-1`
- 10000 inputs: `-1`

### References
- **Source Code**: [https://github.com/blender-nlp/MolT5](https://github.com/blender-nlp/MolT5)
- **Publication**: [https://aclanthology.org/2022.emnlp-main.26/](https://aclanthology.org/2022.emnlp-main.26/)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2022`
- **Ersilia Contributor:** [Amna-28](https://github.com/Amna-28)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [BSD-3-Clause](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos2rd8
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos2rd8
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
