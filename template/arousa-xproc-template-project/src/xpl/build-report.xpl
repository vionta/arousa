<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"  version="3.0">

  <p:input port="source" primary="true" />
  <p:output port="result" primary="true"
	    pipe="result@filter-input" />

  <p:xslt name="filter-input">
    <p:with-input port="stylesheet" href="../xsl/build-tasks-report.xsl"/>
  </p:xslt>

  
    <p:store name="report-serialization" >
      <p:with-option name="href"
                     select="concat('../../build/', 'build-report.html')"/>
    </p:store>

    <!--
	<p:with-input port="source" select="//section"/>
	-->

</p:declare-step>
