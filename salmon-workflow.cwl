cwlVersion: v1.0
class: Workflow
inputs:
  index: string
  transcripts: File

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
