<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#"
	xmlns:html="http://www.w3.org/1999/xhtml/vocab#"
	xmlns:anchor="http://bp4mc2.org/def/anchor#"
>

<xsl:variable name="prefix">urn:mnemonic:</xsl:variable>

<xsl:template match="/">
	<rdf:RDF>
		<xsl:for-each select="schema/knot">
			<anchor:Knot rdf:about="{$prefix}knot:{@mnemonic}">
				<anchor:mnemonic><xsl:value-of select="@mnemonic"/></anchor:mnemonic>
				<anchor:descriptor><xsl:value-of select="@descriptor"/></anchor:descriptor>
				<xsl:for-each select="description"><anchor:description><xsl:value-of select="."/></anchor:description></xsl:for-each>
			</anchor:Knot>
		</xsl:for-each>
		<xsl:for-each select="schema/anchor">
			<anchor:Anchor rdf:about="{$prefix}anchor:{@mnemonic}">
				<anchor:mnemonic><xsl:value-of select="@mnemonic"/></anchor:mnemonic>
				<anchor:descriptor><xsl:value-of select="@descriptor"/></anchor:descriptor>
				<xsl:for-each select="description"><anchor:description><xsl:value-of select="."/></anchor:description></xsl:for-each>
				<xsl:for-each select="attribute">
					<anchor:attribute rdf:resource="{$prefix}attribute:{../@mnemonic}_{@mnemonic}"/>
				</xsl:for-each>
			</anchor:Anchor>
		</xsl:for-each>
		<xsl:for-each select="schema/anchor/attribute">
			<anchor:Attribute rdf:about="{$prefix}attribute:{../@mnemonic}_{@mnemonic}">
				<anchor:mnemonic><xsl:value-of select="@mnemonic"/></anchor:mnemonic>
				<anchor:descriptor><xsl:value-of select="@descriptor"/></anchor:descriptor>
				<xsl:if test="exists(@timeRange)"><anchor:timeRange><xsl:value-of select="@timeRange"/></anchor:timeRange></xsl:if>
				<xsl:if test="exists(@dataRange)"><anchor:dataRange><xsl:value-of select="@dataRange"/></anchor:dataRange></xsl:if>
				<xsl:if test="exists(@knotRange)"><anchor:knotRange rdf:resource="{$prefix}knot:{@knotRange}"/></xsl:if>
				<xsl:for-each select="description"><anchor:description><xsl:value-of select="."/></anchor:description></xsl:for-each>
			</anchor:Attribute>
		</xsl:for-each>
		<xsl:for-each select="schema/tie">
			<xsl:variable name="localname">
				<xsl:for-each select="anchorRole">
					<xsl:if test="position()!=1">_</xsl:if>
					<xsl:value-of select="@type"/>_<xsl:value-of select="@role"/>
				</xsl:for-each>
			</xsl:variable>
			<anchor:Tie rdf:about="{$prefix}tie:{$localname}">
				<xsl:for-each select="anchorRole">
					<anchor:anchorRole>
						<anchor:AnchorRole>
							<anchor:role><xsl:value-of select="@role"/></anchor:role>
							<anchor:identifier><xsl:value-of select="@identifier"/></anchor:identifier>
							<xsl:for-each select="description"><anchor:description><xsl:value-of select="."/></anchor:description></xsl:for-each>
							<anchor:type rdf:resource="{$prefix}anchor:{@type}"/>
						</anchor:AnchorRole>
					</anchor:anchorRole>
				</xsl:for-each>
				<xsl:for-each select="description"><anchor:description><xsl:value-of select="."/></anchor:description></xsl:for-each>
			</anchor:Tie>
		</xsl:for-each>
	</rdf:RDF>
</xsl:template>

</xsl:stylesheet>
