cwlVersion: v1.0
class: CommandLineTool
baseCommand: salmon
arguments: [index]
inputs:
  index:
    type: string
    inputBinding:
      prefix: --index
  transcripts:
    type: File
    inputBinding:
      prefix: --transcripts
outputs:
  index:
    type: Directory
    outputBinding:
      glob: "*"
