<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step
    name="sample-report" version="1.0"
    xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:c="http://www.w3.org/ns/xproc-step"
    xmlns:samplestep="http://www.vionta.net/ns/sample-xqy/1.0"
    >

      
  <!-- Option input  -->
  <p:option name="projectname" />

  <p:documentation>
    Sample input 
  </p:documentation>

  <p:input port="source" primary="true"/>

  <p:output port="result">
    <p:pipe port="result" step="model-index"/>
  </p:output>

  <!-- A call to a imported step sample -->
  <p:import href="imported-step.xml"/>

  <sysrep:main-model-process>
      <p:with-option name="projectname" select="$projectname"/>
  </sysrep:main-model-process>

</p:declare-step>
