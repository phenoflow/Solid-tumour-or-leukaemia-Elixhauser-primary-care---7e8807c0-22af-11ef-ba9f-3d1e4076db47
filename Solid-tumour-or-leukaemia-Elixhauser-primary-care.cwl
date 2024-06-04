cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  solid-tumour-or-leukaemia-elixhauser-primary-care-mneoplasm---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mneoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mneoplasm---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mmelanoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-madenosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-madenosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mcystadenoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mmalignant---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mmalignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-madenosarcoma---primary/output
  pleural-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: pleural-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mmalignant---primary/output
  pelvic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: pelvic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pleural-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mcomedocarcinoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mcomedocarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: pelvic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mskin---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mskin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mcomedocarcinoma---primary/output
  pharyngeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: pharyngeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mskin---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: pharyngeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  hepatocellular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: hepatocellular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-unspec---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-recurrence---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-recurrence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hepatocellular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mmesothelioma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mmesothelioma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-recurrence---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mcarcinoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mcarcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mmesothelioma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-sarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-sarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mcarcinoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-angiosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-angiosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-sarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-metatarsal---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-metatarsal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-angiosarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-ovary---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-ovary---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-metatarsal---primary/output
  adenocarcinomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: adenocarcinomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-ovary---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mosteosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mosteosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: adenocarcinomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  mcarcinoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mcarcinoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mosteosarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mpaget---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mpaget---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: mcarcinoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  modontogenic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: modontogenic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mpaget---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mbile---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mbile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: modontogenic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-cancer---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-cancer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mbile---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-leiomyosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-leiomyosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-cancer---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-madenoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-madenoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-leiomyosarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-siewert---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-siewert---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-madenoma---primary/output
  central-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: central-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-siewert---primary/output
  moxyphilic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: moxyphilic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: central-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-myosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-myosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: moxyphilic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-protuberan---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-protuberan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-myosarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-minfantile---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-minfantile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-protuberan---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-msarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-msarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-minfantile---primary/output
  mendometrioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mendometrioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-msarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-noninfiltrating---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-noninfiltrating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: mendometrioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-differentiated---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-differentiated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-noninfiltrating---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-chondrosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-chondrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-differentiated---primary/output
  mepithelioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mepithelioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-chondrosarcoma---primary/output
  villous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: villous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: mepithelioid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-articulr---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-articulr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: villous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-liver---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-articulr---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-spreading---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-spreading---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-liver---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mgastrinoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mgastrinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-spreading---primary/output
  pillar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: pillar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mgastrinoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-dermatofibrosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-dermatofibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: pillar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-retroperitoneum---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-retroperitoneum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-dermatofibrosarcoma---primary/output
  adenomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: adenomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-retroperitoneum---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-liposarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-liposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: adenomatous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-medulla---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-medulla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-liposarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mcystosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mcystosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-medulla---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-carcinoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mcystosarcoma---primary/output
  mameloblastic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mameloblastic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-carcinoma---primary/output
  coccygeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: coccygeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: mameloblastic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mliposarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mliposarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: coccygeal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-fluid---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-fluid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mliposarcoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-islet---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-islet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-fluid---primary/output
  large-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: large-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-islet---primary/output
  tympanic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: tympanic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: large-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  cerebral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: cerebral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: tympanic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-septum---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-septum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: cerebral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-vestibule---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-vestibule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-septum---primary/output
  mpituitary-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mpituitary-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-vestibule---primary/output
  malveolar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: malveolar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: mpituitary-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  occipital-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: occipital-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: malveolar-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-msweat---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-msweat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: occipital-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-vulva---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-msweat---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-teratoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-teratoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-vulva---primary/output
  cricoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: cricoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-teratoma---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-naevu---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-naevu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: cricoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-phalange---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-phalange---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-naevu---primary/output
  immunoproliferative-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: immunoproliferative-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-phalange---primary/output
  unknown-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: unknown-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: immunoproliferative-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  independent-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: independent-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: unknown-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-overlap---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-overlap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: independent-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  intestinal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: intestinal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-overlap---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-meatus---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-meatus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: intestinal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  autonomic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: autonomic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-meatus---primary/output
  intermediate-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: intermediate-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: autonomic-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-descending---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-descending---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: intermediate-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  mmyxoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mmyxoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-descending---primary/output
  sacral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: sacral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: mmyxoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  mserous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mserous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: sacral-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  embryonal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: embryonal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: mserous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-mapocrine---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-mapocrine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: embryonal-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-fibrosarcoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-fibrosarcoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-mapocrine---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-metaplasia---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-metaplasia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-fibrosarcoma---primary/output
  mastoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mastoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-metaplasia---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-structure---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-structure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: mastoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-retina---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-retina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-structure---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-illdefined---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-illdefined---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-retina---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-related---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-illdefined---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-[m]hepatoblastoma---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-[m]hepatoblastoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-related---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-appendix---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-appendix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-[m]hepatoblastoma---primary/output
  arytenoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: arytenoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-appendix---primary/output
  msebaceous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: msebaceous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: arytenoid-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  mfollicular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mfollicular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: msebaceous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-carina---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-carina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: mfollicular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-cerebrum---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-cerebrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-carina---primary/output
  solid-tumour-or-leukaemia-elixhauser-primary-care-meninge---primary:
    run: solid-tumour-or-leukaemia-elixhauser-primary-care-meninge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-cerebrum---primary/output
  mmucinous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mmucinous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: solid-tumour-or-leukaemia-elixhauser-primary-care-meninge---primary/output
  mtubular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary:
    run: mtubular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: mmucinous-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: mtubular-solid-tumour-or-leukaemia-elixhauser-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
