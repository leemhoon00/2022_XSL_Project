<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="개인페이지">
    <html>
      <head>
        <title><xsl:value-of select="타이틀" /></title>
        <link rel="stylesheet" type="text/css" href="../css/introduce_css.css" />
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;display=swap" rel="stylesheet" />
      </head>
      <body>
        <div class="profile">
          <img class="profile-image" >
            <xsl:attribute name="src">
                <xsl:value-of select="헤더/사진/@사진"/>
            </xsl:attribute>
          </img>
          <h1><xsl:value-of select="헤더/영어이름" /></h1>
          <hr>
            <ul class="text">
              <li>
                <p>이름 : <xsl:value-of select="개인정보/이름" /></p>
              </li>
              <li>
                <p>MBTI : <xsl:value-of select="개인정보/MBTI" /></p>
              </li>
              <li>
                <p>생년월일 : <xsl:value-of select="개인정보/생년월일" /></p>
              </li>
              <li>
                <p>전공 : <xsl:value-of select="개인정보/전공" /></p>
              </li>
              <li>
                <p>거주지 : <xsl:value-of select="개인정보/거주지" /></p>
              </li>
              <li>
                <p>전화번호 : <xsl:value-of select="개인정보/전화번호" /></p>
              </li>
              <li>
                <p>e-mail : <xsl:value-of select="개인정보/e-mail" /></p>
              </li>
            </ul>
          </hr>
          <hr>
            <ul class="text">
                <li>
                    <p>깃허브 : <xsl:value-of select="SNS/깃허브" /></p>
                </li>
                <li>
                    <p>인스타그램 : <xsl:value-of select="SNS/인스타그램" /></p>
                </li>
            </ul>
          </hr>
          <hr>
            <iframe width="420" height="315" frameborder="0" allowfullscreen="allowfullscreen">
                <xsl:attribute name="src">
                    <xsl:value-of select="YOUTUBE/@링크"/>
                </xsl:attribute>
            </iframe>
          </hr>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>