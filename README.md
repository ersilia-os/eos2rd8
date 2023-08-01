# MolT5-Translation between Molecules and Natural Language

MolT5 (Molecular T5) is a self-supervised learning framework pretrained on unlabeled natural language text and molecule strings with two end goals: molecular captioning (given a molecule, generate its description) and text-based de novo molecular generation (given a description, propose a molecule that matches it). This implementation is focused on molecular captioning.

## Identifiers

* EOS model ID: `eos2rd8`
* Slug: `molt5-smiles-to-caption`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Representation`
* Output: `Text`
* Output Type: `String`
* Output Shape: `Single`
* Interpretation: Description of a molecule

## References

* [Publication](https://arxiv.org/abs/2204.11817)
* [Source Code](https://github.com/blender-nlp/MolT5)
* Ersilia contributor: [Amna-28](https://github.com/Amna-28)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos2rd8)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos2rd8.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos2rd8) (AMD64)

## Citation

If you use this model, please cite the [original authors](https://arxiv.org/abs/2204.11817) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a None license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!