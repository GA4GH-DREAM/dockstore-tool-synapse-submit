#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "synapse-submit"
label: "Synapse get tool"

cwlVersion: v1.0

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/

dct:creator:
  "@id": "http://orcid.org/0000-0002-5841-0198"
  foaf:name: Thomas V Yu
  foaf:mbox: "mailto:thomasyu888@gmail.com"

requirements:
- class: DockerRequirement
  dockerPull: 

inputs:
  config_file:
    type: File
    inputBinding:
      position: 1

  synapse_id:
    type: string
    inputBinding:
      position: 2

outputs:
  output:
    type: File
    outputBinding:
      glob: $(inputs.output_filename)

baseCommand: ["bash", "/usr/local/bin/synapse_submit"]
