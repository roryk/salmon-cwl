cwlVersion: v1.0
class: CommandLineTool
baseCommand: salmon
arguments: [quant]
inputs:
  - id: index
    type: Directory
    inputBinding:
      prefix: --index
  - id: inf1
    type: File
    inputBinding:
      prefix: --mates1
  - id: inf2
    type: File
    inputBinding:
      prefix: --mates2
  - id: quantdir
    type: string
    inputBinding:
      prefix: --output
  - id: numBootstraps
    type: int
    default: 30
    inputBinding:
      prefix: --numBootstraps
  - id: libType
    type: string
    default: A
    inputBinding:
      prefix: --libType
outputs:
  quantdir:
    type: Directory
    outputBinding:
      glob: "*"
