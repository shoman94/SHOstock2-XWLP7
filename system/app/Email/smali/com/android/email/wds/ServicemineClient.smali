.class public Lcom/android/email/wds/ServicemineClient;
.super Ljava/lang/Object;
.source "ServicemineClient.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "samsung"

    iput-object v0, p0, Lcom/android/email/wds/ServicemineClient;->mUsername:Ljava/lang/String;

    .line 44
    const-string v0, "xi7Claso"

    iput-object v0, p0, Lcom/android/email/wds/ServicemineClient;->mPassword:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/email/wds/ServicemineClient;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    .line 135
    const/4 v3, 0x0

    .line 138
    .local v3, ret:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 139
    .local v1, params:Lorg/apache/http/params/HttpParams;
    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 140
    const-string v4, "utf-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 141
    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 144
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 145
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 146
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lcom/android/emailcommon/utility/SSLSocketFactory;->getSocketFactory()Lcom/android/emailcommon/utility/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 147
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 148
    .local v0, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    .end local v3           #ret:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 149
    .restart local v3       #ret:Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v3
.end method

.method public getWDSResponce(Ljava/lang/String;)Lcom/android/email/wds/EmailProviderWds;
    .locals 25
    .parameter "domain"

    .prologue
    .line 52
    const/4 v10, 0x0

    .line 53
    .local v10, method:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/wds/ServicemineClient;->getClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v3

    .line 54
    .local v3, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v6, 0x0

    .line 56
    .local v6, emailProvider:Lcom/android/email/wds/EmailProviderWds;
    const-string v20, "ServiceMineClient >>"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "client : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez v3, :cond_0

    .line 58
    const/16 v20, 0x0

    .line 131
    :goto_0
    return-object v20

    .line 60
    :cond_0
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v20

    sget-object v21, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    new-instance v22, Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/wds/ServicemineClient;->mUsername:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/wds/ServicemineClient;->mPassword:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v22}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 63
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "domainName="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {p1 .. p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, domainParameter:Ljava/lang/String;
    const-string v19, "&trustLevel=0"

    .line 65
    .local v19, trustLevelParameter:Ljava/lang/String;
    const-string v2, "&useCorrection=true"

    .line 67
    .local v2, autoCorrection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/wds/ServicemineClient;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "phone"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/telephony/TelephonyManager;

    .line 69
    .local v18, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, hni:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v16

    .line 72
    .local v16, spn:Ljava/lang/String;
    const-string v9, ""

    .line 73
    .local v9, hniParameter:Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    .line 74
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "&hni="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 77
    :cond_1
    const-string v17, ""

    .line 78
    .local v17, spnParameter:Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_2

    .line 79
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "&spn="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 82
    :cond_2
    const-string v15, "https://servicemine-api.wdsglobal.com/servicemine-api/email"

    .line 84
    .local v15, servicemineUri:Ljava/lang/String;
    const-string v20, "ServiceMineClient >>"

    const-string v21, "-------------------------------------------------------"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v20, "ServiceMineClient >>"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "uri : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v20, "ServiceMineClient >>"

    const-string v21, "-------------------------------------------------------"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    .end local v10           #method:Lorg/apache/http/client/methods/HttpGet;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 97
    .restart local v10       #method:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-virtual {v3, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 98
    .local v12, res:Lorg/apache/http/HttpResponse;
    new-instance v7, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 99
    .local v7, handler:Lorg/apache/http/impl/client/BasicResponseHandler;
    invoke-virtual {v7, v12}, Lorg/apache/http/impl/client/BasicResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v13

    .line 100
    .local v13, responseBody:Ljava/lang/String;
    const-string v20, "Marvin"

    move-object/from16 v0, v20

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v11, Lcom/android/email/wds/ServicemineParser;

    invoke-direct {v11}, Lcom/android/email/wds/ServicemineParser;-><init>()V

    .line 103
    .local v11, parser:Lcom/android/email/wds/ServicemineParser;
    new-instance v20, Lorg/xml/sax/InputSource;

    new-instance v21, Ljava/io/StringReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v20 .. v21}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/email/wds/ServicemineParser;->parse(Lorg/xml/sax/InputSource;)Lcom/android/email/wds/EmailProviderWds;

    move-result-object v6

    .line 105
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 107
    .local v14, resultCode:I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-eq v14, v0, :cond_3

    .line 108
    new-instance v20, Ljava/io/IOException;

    const-string v21, "Could not access email API"

    invoke-direct/range {v20 .. v21}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException; {:try_start_0 .. :try_end_0} :catch_5

    .line 111
    .end local v7           #handler:Lorg/apache/http/impl/client/BasicResponseHandler;
    .end local v11           #parser:Lcom/android/email/wds/ServicemineParser;
    .end local v12           #res:Lorg/apache/http/HttpResponse;
    .end local v13           #responseBody:Ljava/lang/String;
    .end local v14           #resultCode:I
    :catch_0
    move-exception v5

    .line 113
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 130
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :goto_1
    const-string v20, "email"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " emailProvider :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v6

    .line 131
    goto/16 :goto_0

    .line 110
    .restart local v7       #handler:Lorg/apache/http/impl/client/BasicResponseHandler;
    .restart local v11       #parser:Lcom/android/email/wds/ServicemineParser;
    .restart local v12       #res:Lorg/apache/http/HttpResponse;
    .restart local v13       #responseBody:Ljava/lang/String;
    .restart local v14       #resultCode:I
    :cond_3
    :try_start_1
    const-string v20, "Marvin"

    const-string v21, "Executed query"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_1

    .line 114
    .end local v7           #handler:Lorg/apache/http/impl/client/BasicResponseHandler;
    .end local v11           #parser:Lcom/android/email/wds/ServicemineParser;
    .end local v12           #res:Lorg/apache/http/HttpResponse;
    .end local v13           #responseBody:Ljava/lang/String;
    .end local v14           #resultCode:I
    :catch_1
    move-exception v5

    .line 116
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 117
    .end local v5           #e:Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 119
    .local v5, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 120
    .end local v5           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v5

    .line 122
    .local v5, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v5           #e:Lorg/xml/sax/SAXException;
    :catch_4
    move-exception v5

    .line 125
    .local v5, e:Ljava/net/URISyntaxException;
    invoke-virtual {v5}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 126
    .end local v5           #e:Ljava/net/URISyntaxException;
    :catch_5
    move-exception v5

    .line 128
    .local v5, e:Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;
    invoke-virtual {v5}, Lcom/android/email/wds/EmailProviderWds$MissingEmailConnectionException;->printStackTrace()V

    goto :goto_1
.end method
