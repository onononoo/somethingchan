<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/rss/channel">
    <html lang="en">
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="title"/></title>
        <link rel="stylesheet" href="css/somethingchan.css"/>
      </head>
      <body>
        <nav class="top"><a href="index.html">home</a><a href="support.html">support</a> · <a href="license.html">license</a></nav>
        <main>
          <h1><xsl:value-of select="title"/></h1>
          <p class="tag"><xsl:value-of select="description"/> (<xsl:value-of select="count(item)"/> releases)</p>
          <div class="stack">
            <xsl:for-each select="item">
              <details name="rel">
                <summary><xsl:value-of select="title"/></summary>
                <p class="tag"><xsl:value-of select="pubDate"/></p>
                <p><xsl:value-of select="description"/></p>
              </details>
            </xsl:for-each>
          </div>
        </main>
        <footer class="site">
          <p class="tiny">source code is on my github under my repo: somethingchan, and pls donate! <a href="https://kaieklund.vercel.app/">https://kaieklund.vercel.app/</a></p>
        </footer>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
