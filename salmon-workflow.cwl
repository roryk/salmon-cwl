cwlVersion: v1.0
class: Workflow
inputs:
  index: string
  transcripts: File
  inf1: File
  inf2: File
  quantdir: string
requirements:
  - class: ScatterFeatureRequirement

outputs:
  index:
    type: Directory
    outputSource: quasiindex/index

steps:
  quasiindex:
    run: salmon-index.cwl
    in:
      index: index
      transcripts: transcripts
    out: [index]
  quant:
    run: salmon-quant.cwl
    in:
      index: quasiindex/index
      inf1: inf1
      inf2: inf2
      quantdir: quantdir
    out: [quantdir]
