<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : noticies-rss.xsl
    Created on : 15 / de maig / 2017, 09:09
    Author     : ifc33a
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <body>
                
            <header>
                <div style=" width: 100%">
                    <div class="col-4" style=" display: inline-block;">
                        <img class ="col-10 col-m-12 col-s-12" style="padding: 0px;" src="img/logo.png"/>
                    </div><!--
                -->
                    <div class ="col-8 col-s-12 col-m-12" style=" display: inline-block">
                        <ul class="col-12 col-m-12 col-s-12"><!--
                        -->
                            <li class="home col-3 col-m-12 col-s-12">
                                <a href="index.html">Home</a>
                            </li><!--
                        -->
                            <li class="news col-3 col-m-12 col-s-12">
                                <a href="noticies-rss.html">Noticies</a>
                            </li><!--
                        -->
                            <li class="contact col-3 col-m-12 col-s-12">
                                <a href="contact.html">Contacte</a>
                            </li><!--
                        -->
                            <li class="about col-3 col-m-12 col-s-12">
                                <a href="#about">Sobre mi</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </header>
        
            <xsl:for-each select="//item">
                    
                <div class="col-3 col-m-6 col-s-12 divNoticies">
                    
                    <p class ="negreta">
                        <xsl:value-of select="title"></xsl:value-of>
                    </p>
                    <br/>      

                    <p class ="negreta prova">
                        <xsl:element name="a">
                            <xsl:attribute name="href">
                                <xsl:value-of select="link"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:value-of select="title"></xsl:value-of>
                        </xsl:element>
                    </p>

                    <p class="blanc">
                        <xsl:value-of select="description"></xsl:value-of>
                    </p>
                    
                    <xsl:if test="*[local-name() = 'content']/@url">
                        <div class="col-6 col-m-6 col-s-12">
                            <img class="img-rss">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="*[local-name() = 'content']/@url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="*[local-name() = 'content']/@url"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </div>
                    </xsl:if>
                    
                    
                </div>
                    
                                   
                                       
            </xsl:for-each>
        </body>
    </xsl:template>

</xsl:stylesheet>
