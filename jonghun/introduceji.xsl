<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Jimin introduce</title>
        <link rel="stylesheet" type="text/css" href="../css/introduce_css.css" />
        <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&amp;display=swap" rel="stylesheet" />
      </head>
      <body>
        <div class="profile">
          <img src="ji.png" class="profile-image" />
          <h1>Lee Ji Min</h1>
          <hr>
            <ul class="text">
              <li>
                <p>&lt;이름&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Name" /></p>
              </li>
              <li>
                <p>&lt;성별&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Gender" /></p>
              </li>
            </ul>
          </hr>
          <hr>
            <ul class="text">
              <li>
                <p>&lt;관계&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family1/Relation"></xsl:value-of></p>
                <p>&lt;이름&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family1/FamilyName" /></p>
                <p>&lt;직업&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family1/Working" /></p>
              </li>
              <li>
                <p>&lt;관계&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family2/Relation"></xsl:value-of></p>
                <p>&lt;이름&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family2/FamilyName" /></p>
                <p>&lt;직업&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family2/Working" /></p>
              </li>
              <li>
                <p>&lt;관계&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family3/Relation"></xsl:value-of></p>
                <p>&lt;이름&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family3/FamilyName" /></p>
                <p>&lt;직업&gt; <xsl:value-of select="Profile/MyPtofile/MyInfo/Family3/Working" /></p>
              </li>
            </ul>
          </hr>
          <hr>
            <ul class="text">
              <li>
                <p>&lt;생일&gt;  <xsl:value-of select="Profile/MyPtofile/MyInfo/Birth"></xsl:value-of></p>
                <p>&lt;이메일&gt;  <xsl:value-of select="Profile/MyPtofile/MyInfo/Email"></xsl:value-of></p>
                <p>&lt;전화번호&gt;  <xsl:value-of select="Profile/MyPtofile/MyInfo/Phone"></xsl:value-of></p>
              </li>
            </ul>
          </hr>
          <hr>
            <ul class="text">
              <li>
                <p>&lt;학력 사항&gt;</p>
              </li>
              <li>
                <xsl:value-of select="Profile/MyPtofile/Career/School1/SchoolPeriod" />
                <xsl:value-of select="Profile/MyPtofile/Career/School1/SchoolName" />
                <xsl:value-of select="Profile/MyPtofile/Career/School1/Course" />
              </li>
              <li>
                <xsl:value-of select="Profile/MyPtofile/Career/School2/SchoolPeriod" />
                <xsl:value-of select="Profile/MyPtofile/Career/School2/SchoolName" />
                <xsl:value-of select="Profile/MyPtofile/Career/School2/Course" />
              </li>
              <li>
                <xsl:value-of select="Profile/MyPtofile/Career/School3/SchoolPeriod" />
                <xsl:value-of select="Profile/MyPtofile/Career/School3/SchoolName" />
                <xsl:value-of select="Profile/MyPtofile/Career/School3/Course" />
              </li>
              <li>
                <xsl:value-of select="Profile/MyPtofile/Career/School4/SchoolPeriod" />
                <xsl:value-of select="Profile/MyPtofile/Career/School4/SchoolName" />
                <xsl:value-of select="Profile/MyPtofile/Career/School4/Course" />
              </li>
              <li>
                <xsl:value-of select="Profile/MyPtofile/Career/School5/SchoolPeriod" />
                <xsl:value-of select="Profile/MyPtofile/Career/School5/SchoolName" />
                <xsl:value-of select="Profile/MyPtofile/Career/School5/Course" />
              </li>
            </ul>
          </hr>
          <hr>
            <ul class="text">
              <li>
                <p>&lt;취미&gt;   <xsl:value-of select="Profile/MyPtofile/LifeStyle/Hobby"></xsl:value-of></p>
                <p>&lt;특기&gt;   <xsl:value-of select="Profile/MyPtofile/LifeStyle/Special"></xsl:value-of></p>
                <p>&lt;좋아하는 것&gt;  <xsl:value-of select="Profile/MyPtofile/LifeStyle/Favorite"></xsl:value-of></p>
                <p>&lt;싫어하는 것&gt;  <xsl:value-of select="Profile/MyPtofile/LifeStyle/Hate"></xsl:value-of></p>
                <p>&lt;장래 희망&gt;  <xsl:value-of select="Profile/MyPtofile/LifeStyle/Hope"></xsl:value-of></p>
              </li>
            </ul>
          </hr>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>