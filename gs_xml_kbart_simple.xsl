<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <!--Template for SFX XML ouput to tab-delimited KBART format-->
    <!--Last update: 2013-1-20-->
    <!--Written by Lauren Magnuson, PALNI systems coordinator-->
    <!--Copyright 2013 PALNI Inc.-->
    
    <!--output as text, declare newline and tab space variables-->
    <xsl:output method="text"/>
    <xsl:variable name="newline"><xsl:text>&#xa;</xsl:text></xsl:variable>
    <xsl:variable name="tab"><xsl:text>&#x09;</xsl:text></xsl:variable>
    <!--pull all titles with embargoes instead of coverage from-to-->
    <xsl:template name="item" match="/">
        <xsl:call-template name="header"></xsl:call-template>
        <xsl:for-each select="institutional_holdings/item">
            <!--publication_title-->
            <xsl:value-of select="title"/><xsl:value-of select="$tab"/>
            <!--print_identifier-->
            <xsl:value-of select="issn"/><xsl:value-of select="$tab"/>
            <!--online_identifier-->
            <xsl:value-of select="eissn"/><xsl:value-of select="$tab"/>
            <!--date_first_issue_online-->
            <xsl:value-of select="coverage/from/year"/><xsl:value-of select="$tab"/>
            <!--num_first_vol_online-->
            <xsl:value-of select="coverage/from/volume"/><xsl:value-of select="$tab"/>
            <!--num_first_issue_online-->
            <xsl:value-of select="coverage/from/issue"/><xsl:value-of select="$tab"/>
            <!--date_last_issue_online-->
            <xsl:value-of select="coverage/to/year"/><xsl:value-of select="$tab"/>
            <!--num_first_vol_online-->
            <xsl:value-of select="coverage/to/volume"/><xsl:value-of select="$tab"/>
            <!--num_first_issue_online-->
            <xsl:value-of select="coverage/to/issue"/><xsl:value-of select="$tab"/>
            <!--begin filler fields-->
            <!--title_url-->
            <xsl:value-of select="$tab"/>
            <!--first_author-->
            <xsl:value-of select="$tab"/>
            <!--title_id-->
            <xsl:value-of select="$tab"/>
            <!--coverage_depth-->
            <xsl:text>print</xsl:text><xsl:value-of select="$tab"/>
            <!--coverage_notes-->
            <xsl:value-of select="$tab"/>
            <!--publisher_name-->
            <xsl:value-of select="$tab"/>
            <!--location-->
            <xsl:value-of select="$tab"/>
            <!--title_notes-->
            <xsl:value-of select="$tab"/>
            <!--oclc_collection_name-->
            <xsl:value-of select="$tab"/>
            <!--oclc_collection_id-->
            <xsl:value-of select="$tab"/>
            <!--oclc_entry_id-->
            <xsl:value-of select="$tab"/>
            <!--oclc_linkscheme-->
            <xsl:value-of select="$tab"/>
            <!--oclc_number-->
            <xsl:value-of select="$tab"/>
            <!--ACTION-->
            <xsl:text>RAW</xsl:text>
            <xsl:value-of select="$newline"/> 
        </xsl:for-each>
    </xsl:template>
    
    <!-- KBART header-->
    <xsl:template name="header">
        <xsl:text>publication_title</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>print_identifier</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>online_identifier</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>date_first_issue_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>num_first_vol_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>num_first_issue_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>date_last_issue_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>num_last_vol_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>num_last_issue_online</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>title_url</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>first_author</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>title_id</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>coverage_depth</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>coverage_notes</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>publisher_name</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>location</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>title_notes</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>oclc_collection_name</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>oclc_collection_id</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>oclc_entry_id</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>oclc_linkscheme</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>oclc_number</xsl:text><xsl:value-of select="$tab"/>
        <xsl:text>ACTION</xsl:text> <xsl:value-of select="$newline"/>  
    </xsl:template>
</xsl:stylesheet>