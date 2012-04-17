.class public Lcom/android/email/syncnconnect/xml/ParserUtil;
.super Ljava/lang/Object;
.source "ParserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteEndpointResponseXML([BLcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 140
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 141
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 143
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 144
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/DeleteEndpointXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/DeleteEndpointResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 145
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 146
    const/4 v0, 0x1

    .line 154
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 152
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static endpointResponseXML([BLcom/android/email/syncnconnect/vo/EndpointResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 118
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 119
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 121
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 122
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/EndpointXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/EndpointResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 123
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 124
    const/4 v0, 0x1

    .line 132
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 130
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPINResponseXML([BLcom/android/email/syncnconnect/vo/GetPINResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 53
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 54
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 56
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 57
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/GetPINXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/GetPINXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/GetPINResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 58
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    const/4 v0, 0x1

    .line 67
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 63
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 64
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 65
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProfileResponseXML([BLcom/android/email/syncnconnect/vo/GetProfileResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 162
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 163
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 165
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 166
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/GetProfileXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/GetProfileResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 167
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    const/4 v0, 0x1

    .line 176
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTagsResponseXML([BLcom/android/email/syncnconnect/vo/GetTagsResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 96
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 97
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 100
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/GetTagsXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/GetTagsResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 101
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 102
    const/4 v0, 0x1

    .line 110
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 107
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 108
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTokenResponseXML([BLcom/android/email/syncnconnect/vo/GetTokenResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 75
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 76
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 78
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 79
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/GetTokenXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/GetTokenXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/GetTokenResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 80
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    const/4 v0, 0x1

    .line 89
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 85
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static modifyProfileResponseXML([BLcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 184
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 185
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 187
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 188
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/ModifyProfileXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/ModifyProfileResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 189
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 190
    const/4 v0, 0x1

    .line 198
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 196
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static syncAllResponseXML([BLcom/android/email/syncnconnect/vo/SyncAllResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 205
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 206
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 208
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 209
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/SyncAllXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/SyncAllResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 210
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 211
    const/4 v0, 0x1

    .line 219
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 215
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 217
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static verifyDeviceResponseXML([BLcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)Z
    .locals 7
    .parameter "input"
    .parameter "responseVO"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, bRet:Z
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 32
    .local v4, spf:Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 33
    .local v3, sp:Ljavax/xml/parsers/SAXParser;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    .local v2, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 36
    .local v5, xr:Lorg/xml/sax/XMLReader;
    new-instance v6, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;

    invoke-direct {v6, p1}, Lcom/android/email/syncnconnect/xml/VerifyDeviceXMLParser;-><init>(Lcom/android/email/syncnconnect/vo/VerifyDeviceResponseVO;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 37
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 38
    const/4 v0, 0x1

    .line 46
    .end local v2           #is:Ljava/io/ByteArrayInputStream;
    .end local v3           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v5           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 43
    .end local v1           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 44
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
