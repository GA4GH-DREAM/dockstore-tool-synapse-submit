#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "synapse-submit"
label: "Synapse submit tool"

cwlVersion: v1.0

$namespaces:
  dct: http://purl.org/dc/terms/
  foaf: http://xmlns.com/foaf/0.1/

doc: |
  [![Docker Repository on Quay.io](https://quay.io/repository/ga4gh-dream/dockstore-tool-synapse-submit "Docker Repository on Quay.io")](https://quay.io/thomasyu888/dockstore-tool-synapse-submit)
  The Synapse function to submit to an evaluation queue.

dct:creator:
  "@id": "http://orcid.org/0000-0002-5841-0198"
  foaf:name: Thomas V Yu
  foaf:mbox: "mailto:thomasyu888@gmail.com"

requirements:
- class: DockerRequirement
  dockerPull: quay.io/ga4gh-dream/dockstore-tool-synapse-submit:1.6.2.dev--3

inputs:
  config_file:
    type: File
    inputBinding:
      position: 1
      prefix: -c

  eval_id:
    type: string
    inputBinding:
      position: 2
      prefix: -e

  team_name:
    type: string?
    inputBinding:
      position: 3
      prefix: -t

  file:
    type: File?
    inputBinding:
      position: 4
      prefix: -f

  parent_id:
    type: string?
    inputBinding:
      position: 5
      prefix: -p

  entity_id:
    type: string?
    inputBinding:
      position: 6
      prefix: -i

outputs: []

baseCommand: ["bash", "/usr/local/bin/synapse_submit"]
