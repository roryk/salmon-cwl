cwlVersion: v1.0
class: CommandLineTool
baseCommand: salmon
arguments: ["index"]
inputs:
  - id: index
    type: string
    inputBinding:
      prefix: --index
  - id: transcripts
    type: File
    inputBinding:
      prefix: --transcripts
outputs:
  index:
    type: Directory
    outputBinding:
      glob: "*"
