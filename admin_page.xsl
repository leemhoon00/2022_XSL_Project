<?xml version="1.0" encoding="utf-8"?>
<xs:stylesheet xmlns:xs="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xs:output method="html" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
  <xs:template match="/equipment_management_system/admin">
    <html>
      <head>
        <title>기자재 관리 시스템</title>
      </head>
      <body>
        <script language="JavaScript">function change1(obj){
        obj.style.background = '#C4B73B';
        obj.style.color = 'black';
    }
     
    function change2(obj){
        obj.style.background = '#FFE400';
        obj.style.color = 'black';
    }</script>
        <center>
          <h2>관리자</h2>
          <table width="100%" bgcolor="#ffe400">
            <tr>
              <th width="140" />
              <th width="180" />
              <th width="180" />
              <th />
            </tr>
            <xs:apply-templates select="next_page" />
          </table>
          <table border="1" width="50%">
            <tr>
              <th>사진</th>
              <th width="400">학과</th>
              <th width="400">학년</th>
              <th width="400">id</th>
              <th width="400">이름</th>
              <th width="400">휴대폰번</th>
            </tr>
            <xs:apply-templates select="person" />
          </table>
        </center>
      </body>
    </html>
  </xs:template>
  <xs:template match="person">
    <tr>
      <td>
        <xsl:apply-templates select="image" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" />
      </td>
      <td align="center">
        <xs:value-of select="department" />
      </td>
      <td align="center">
        <xs:value-of select="year" />
      </td>
      <td align="center">
        <xs:value-of select="id" />
      </td>
      <td align="center">
        <xs:value-of select="name" />
      </td>
      <td align="center">
        <xs:value-of select="phone" />
      </td>
    </tr>
  </xs:template>
  <xs:template match="image">
    <xs:element name="img">
      <xs:attribute name="src">
        <xs:value-of select="." />
      </xs:attribute>
      <xs:attribute name="width">200</xs:attribute>
      <xs:attribute name="height">200</xs:attribute>
    </xs:element>
  </xs:template>
  <xs:template match="next_page">
    <tr>
      <td align="left">
        <input type="button" name="btn" value="임베디드 기자재" onclick="location.href='item_page.xml'" style="font-family:돋움; font-weight: bold; background-color:#ffe400; border:1; height:30; solid:#000000" width="100%" onmouseover="change1(this)" onmouseout="change2(this)" />
      </td>
      <td align="left">
        <input type="button" name="btn" value="디지털논리회로 기자재" onclick="location.href='item_page2.xml'" style="font-family:돋움; font-weight: bold; background-color:#ffe400; border:1; height:30; solid:#000000" width="100%" onmouseover="change1(this)" onmouseout="change2(this)" />
      </td>
      <td align="left">
        <input type="button" name="btn" value="관리자 페이지 이동" onclick="location.href='admin_page.xml'" style="font-family:돋움; font-weight: bold; background-color:#ffe400; border:1; height:30;" width="100%" onmouseover="change1(this)" onmouseout="change2(this)" />
      </td>
    </tr>
  </xs:template>
</xs:stylesheet>