<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="utf-8" omit-xml-declaration="no" indent="yes" />
    <xsl:template match="팀페이지">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title><xsl:value-of select="타이틀" /></title>
                <!-- Bootstrap icons-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
                <!-- Core theme CSS (includes Bootstrap)-->
                <link href="index.css" rel="stylesheet" />
            </head>
            <body class="d-flex flex-column h-100">
                <main class="flex-shrink-0">
                    
                    <!-- Header-->
                    <header class="bg-dark py-5">
                        <div class="container px-5">
                            <div class="row gx-5 align-items-center justify-content-center">
                                <div class="col-lg-8 col-xl-7 col-xxl-6">
                                    <div class="my-5 text-center text-xl-start">
                                        <h1 class="display-5 fw-bolder text-white mb-2"><xsl:value-of select="간판/팀소개말" /></h1>
                                    </div>
                                </div>
                                <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                                    <img>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="간판/팀사진/@사진"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="width">100%</xsl:attribute>
                                        <xsl:attribute name="height">400px</xsl:attribute>
                                    </img>
                                </div>
                            </div>
                        </div>
                    </header>
                    
                    <!-- Blog preview section-->
                    <section class="py-5">
                        <div class="container px-5 my-5">
                            <div class="row gx-5 justify-content-center">
                                <div class="col-lg-8 col-xl-6">
                                    <div class="text-center">
                                        <h2 class="fw-bolder"><xsl:value-of select="팀원소개/섹션명"/></h2>
                                        <br /><br /><br /><br /><br />
                                    </div>
                                </div>
                            </div>
                            <div class="row gx-5">
                                <xsl:for-each select="팀원소개/팀원카드">
                                    <div class="col-lg-4 mb-5">
                                        <div class="card h-100 shadow border-0">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="개인사진/@사진"/>
                                                </xsl:attribute>
                                                <xsl:attribute name="width">100%</xsl:attribute>
                                                <xsl:attribute name="height">400px</xsl:attribute>
                                            </img>
                                            
                                            <div class="card-body p-4">
                                                <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3"><xsl:value-of select="소속"/></h5></a>
                                                <p class="card-text mb-0"><xsl:value-of select="좌우명"/></p>
                                            </div>
                                            <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                                <div class="d-flex align-items-end justify-content-between">
                                                    <div class="d-flex align-items-center">
                                                        <div class="small">
                                                            <div class="fw-bold"><xsl:value-of select="이름"/></div>
                                                            <div class="text-muted"><xsl:value-of select="날짜"/></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </section>
                </main>
                <!-- Footer-->
                <footer class="bg-dark py-4 mt-auto">
                    <div class="container px-5">
                        <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                            <div class="col-auto"><div class="small m-0 text-white"><xsl:value-of select="저작권"/></div></div>
                        </div>
                    </div>
                </footer>
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>