<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd"
  xmlns:content="http://purl.org/rss/1.0/modules/content/"
>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title>
          <xsl:value-of select="/rss/channel/title" />
        </title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <style>
          body {
          padding: 20px 40px;
          }
        </style>
      </head>
      <body>
        <div>
          <header>
            <h2>
              <xsl:value-of select="/rss/channel/title" />
            </h2>
            <p>
              <xsl:value-of select="/rss/channel/description" />
            </p>
          </header>
          <h2>Recent Items</h2>
          <hr />
          <xsl:for-each select="/rss/channel/item">
            <div>
              <h3>
                <!-- <a target="_blank"> -->
                <!-- <xsl:attribute name="href"> -->
                <!--   <xsl:value-of select="link" /> -->
                <!-- </xsl:attribute> -->
                <xsl:value-of select="title" />
                <!-- </a> -->
              </h3>
              <p>
                <xsl:value-of select="description" />
              </p>
              <p>
                <xsl:value-of select="content:encoded" />
              </p>
            </div>
            <hr />
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
