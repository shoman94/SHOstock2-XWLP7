.class public Lcom/android/mms/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/mms/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 424
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 432
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 380
    const/4 v3, 0x0

    .line 385
    .local v3, userAgent:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-static {v3, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 389
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 390
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v2

    .line 395
    .local v2, soTimeout:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "xxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 402
    return-object v0
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 411
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 414
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 416
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 420
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 4
    .parameter "exception"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    const-string v1, "Mms:transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    .line 368
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v0       #e:Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 374
    throw v0

    .line 371
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .end local v0           #e:Ljava/io/IOException;
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .restart local v0       #e:Ljava/io/IOException;
    goto :goto_0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 43
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p3, :cond_0

    .line 107
    new-instance v39, Ljava/lang/IllegalArgumentException;

    const-string v40, "URL must not be null."

    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v39

    .line 110
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_1

    .line 111
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: params list"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\ttoken\t\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\turl\t\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v40, "Mms:transaction"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tmethod\t\t= "

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const/16 v39, 0x1

    move/from16 v0, p5

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    const-string v39, "POST"

    :goto_0
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tisProxySet\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tproxyHost\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "\tproxyPort\t= "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_1
    const/4 v8, 0x0

    .line 133
    .local v8, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v18, Ljava/net/URI;

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 134
    .local v18, hostUrl:Ljava/net/URI;
    new-instance v34, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v18 .. v18}, Ljava/net/URI;->getPort()I

    move-result v40

    const-string v41, "http"

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    .local v34, target:Lorg/apache/http/HttpHost;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v8

    .line 138
    const/16 v30, 0x0

    .line 139
    .local v30, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 153
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Unknown HTTP method: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ". Must be one of POST["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] or GET["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0x2

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]."

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 155
    const/4 v5, 0x0

    .line 355
    if-eqz v8, :cond_2

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 359
    .end local v18           #hostUrl:Ljava/net/URI;
    .end local v30           #req:Lorg/apache/http/HttpRequest;
    .end local v34           #target:Lorg/apache/http/HttpHost;
    :cond_2
    :goto_1
    return-object v5

    .line 114
    .end local v8           #client:Landroid/net/http/AndroidHttpClient;
    :cond_3
    const/16 v39, 0x2

    move/from16 v0, p5

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    const-string v39, "GET"

    goto/16 :goto_0

    :cond_4
    const-string v39, "UNKNOWN"

    goto/16 :goto_0

    .line 141
    .restart local v8       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v18       #hostUrl:Ljava/net/URI;
    .restart local v30       #req:Lorg/apache/http/HttpRequest;
    .restart local v34       #target:Lorg/apache/http/HttpHost;
    :pswitch_0
    :try_start_1
    new-instance v13, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 143
    .local v13, entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    const-string v39, "application/vnd.wap.mms-message"

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 145
    new-instance v28, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 146
    .local v28, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 147
    move-object/from16 v30, v28

    .line 159
    .end local v13           #entity:Lcom/android/mms/transaction/ProgressCallbackEntity;
    .end local v28           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v27

    .line 160
    .local v27, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_5

    .line 161
    new-instance v39, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v39

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 164
    :cond_5
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 167
    const-string v39, "Accept"

    const-string v40, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v37

    .line 171
    .local v37, xWapProfileTagName:Ljava/lang/String;
    const/16 v38, 0x0

    .line 176
    .local v38, xWapProfileUrl:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v38

    .line 180
    if-eqz v38, :cond_7

    .line 181
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_6

    .line 184
    const-string v39, "Mms:transaction"

    const-string v40, "[HttpUtils] httpConn: xWapProfUrl=xxx"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_6
    move-object/from16 v0, v30

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, extraHttpParams:Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 199
    const-string v39, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v39 .. v39}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v22

    .line 201
    .local v22, line1Number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v21

    .line 202
    .local v21, line1Key:Ljava/lang/String;
    const-string v39, "\\|"

    move-object/from16 v0, v39

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 204
    .local v25, paramList:[Ljava/lang/String;
    move-object/from16 v4, v25

    .local v4, arr$:[Ljava/lang/String;
    array-length v0, v4

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    aget-object v26, v4, v19

    .line 205
    .local v26, paramPair:Ljava/lang/String;
    const-string v39, ":"

    const/16 v40, 0x2

    move-object/from16 v0, v26

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v32

    .line 207
    .local v32, splitPair:[Ljava/lang/String;
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_9

    .line 208
    const/16 v39, 0x0

    aget-object v39, v32, v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 209
    .local v23, name:Ljava/lang/String;
    const/16 v39, 0x1

    aget-object v39, v32, v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    .line 211
    .local v36, value:Ljava/lang/String;
    if-eqz v21, :cond_8

    .line 212
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAuthMdn()Z

    move-result v39

    if-eqz v39, :cond_a

    .line 213
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "1"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    .line 218
    :cond_8
    :goto_4
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_9

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v39

    if-nez v39, :cond_9

    .line 219
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v23           #name:Ljava/lang/String;
    .end local v36           #value:Ljava/lang/String;
    :cond_9
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 150
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v21           #line1Key:Ljava/lang/String;
    .end local v22           #line1Number:Ljava/lang/String;
    .end local v25           #paramList:[Ljava/lang/String;
    .end local v26           #paramPair:Ljava/lang/String;
    .end local v27           #params:Lorg/apache/http/params/HttpParams;
    .end local v32           #splitPair:[Ljava/lang/String;
    .end local v37           #xWapProfileTagName:Ljava/lang/String;
    .end local v38           #xWapProfileUrl:Ljava/lang/String;
    :pswitch_1
    new-instance v30, Lorg/apache/http/client/methods/HttpGet;

    .end local v30           #req:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v30       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_2

    .line 215
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v19       #i$:I
    .restart local v20       #len$:I
    .restart local v21       #line1Key:Ljava/lang/String;
    .restart local v22       #line1Number:Ljava/lang/String;
    .restart local v23       #name:Ljava/lang/String;
    .restart local v25       #paramList:[Ljava/lang/String;
    .restart local v26       #paramPair:Ljava/lang/String;
    .restart local v27       #params:Lorg/apache/http/params/HttpParams;
    .restart local v32       #splitPair:[Ljava/lang/String;
    .restart local v36       #value:Ljava/lang/String;
    .restart local v37       #xWapProfileTagName:Ljava/lang/String;
    .restart local v38       #xWapProfileUrl:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    goto :goto_4

    .line 224
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v19           #i$:I
    .end local v20           #len$:I
    .end local v21           #line1Key:Ljava/lang/String;
    .end local v22           #line1Number:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .end local v25           #paramList:[Ljava/lang/String;
    .end local v26           #paramPair:Ljava/lang/String;
    .end local v32           #splitPair:[Ljava/lang/String;
    .end local v36           #value:Ljava/lang/String;
    :cond_b
    const-string v39, "Accept-Language"

    sget-object v40, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v31

    .line 227
    .local v31, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    .line 228
    .local v33, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v39

    const/16 v40, 0xc8

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_d

    .line 229
    new-instance v39, Ljava/io/IOException;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "HTTP error: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    .line 344
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v18           #hostUrl:Ljava/net/URI;
    .end local v27           #params:Lorg/apache/http/params/HttpParams;
    .end local v30           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #response:Lorg/apache/http/HttpResponse;
    .end local v33           #status:Lorg/apache/http/StatusLine;
    .end local v34           #target:Lorg/apache/http/HttpHost;
    .end local v37           #xWapProfileTagName:Ljava/lang/String;
    .end local v38           #xWapProfileUrl:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 345
    .local v11, e:Ljava/net/URISyntaxException;
    :try_start_2
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 355
    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 359
    .end local v11           #e:Ljava/net/URISyntaxException;
    :cond_c
    :goto_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 231
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v18       #hostUrl:Ljava/net/URI;
    .restart local v27       #params:Lorg/apache/http/params/HttpParams;
    .restart local v30       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #response:Lorg/apache/http/HttpResponse;
    .restart local v33       #status:Lorg/apache/http/StatusLine;
    .restart local v34       #target:Lorg/apache/http/HttpHost;
    .restart local v37       #xWapProfileTagName:Ljava/lang/String;
    .restart local v38       #xWapProfileUrl:Ljava/lang/String;
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v39

    if-eqz v39, :cond_e

    .line 232
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[HttpUtils] http response "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_e
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v13

    .line 237
    .local v13, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 238
    .local v5, body:[B
    if-eqz v13, :cond_10

    .line 246
    :try_start_4
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v9

    .line 247
    .local v9, contentEnc:Lorg/apache/http/Header;
    if-eqz v9, :cond_f

    .line 248
    const/4 v12, 0x0

    .line 249
    .local v12, encoding:Ljava/lang/String;
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 250
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: content encoding is: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v12           #encoding:Ljava/lang/String;
    :cond_f
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v39

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-lez v39, :cond_12

    .line 254
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v39

    move-wide/from16 v0, v39

    long-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    new-array v5, v0, [B

    .line 255
    new-instance v10, Ljava/io/DataInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
    .local v10, dis:Ljava/io/DataInputStream;
    :try_start_5
    invoke-virtual {v10, v5}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 260
    :try_start_6
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 338
    .end local v10           #dis:Ljava/io/DataInputStream;
    :goto_6
    if-eqz v13, :cond_10

    .line 339
    :try_start_7
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 355
    .end local v9           #contentEnc:Lorg/apache/http/Header;
    :cond_10
    if-eqz v8, :cond_2

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 261
    .restart local v9       #contentEnc:Lorg/apache/http/Header;
    .restart local v10       #dis:Ljava/io/DataInputStream;
    :catch_1
    move-exception v11

    .line 262
    .local v11, e:Ljava/io/IOException;
    :try_start_8
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Error closing input stream: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 338
    .end local v9           #contentEnc:Lorg/apache/http/Header;
    .end local v10           #dis:Ljava/io/DataInputStream;
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v39

    if-eqz v13, :cond_11

    .line 339
    :try_start_9
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_11
    throw v39
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 346
    .end local v5           #body:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v18           #hostUrl:Ljava/net/URI;
    .end local v27           #params:Lorg/apache/http/params/HttpParams;
    .end local v30           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #response:Lorg/apache/http/HttpResponse;
    .end local v33           #status:Lorg/apache/http/StatusLine;
    .end local v34           #target:Lorg/apache/http/HttpHost;
    .end local v37           #xWapProfileTagName:Ljava/lang/String;
    .end local v38           #xWapProfileUrl:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 347
    .local v11, e:Ljava/lang/IllegalStateException;
    :try_start_a
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 355
    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 259
    .end local v11           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #body:[B
    .restart local v9       #contentEnc:Lorg/apache/http/Header;
    .restart local v10       #dis:Ljava/io/DataInputStream;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v18       #hostUrl:Ljava/net/URI;
    .restart local v27       #params:Lorg/apache/http/params/HttpParams;
    .restart local v30       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #response:Lorg/apache/http/HttpResponse;
    .restart local v33       #status:Lorg/apache/http/StatusLine;
    .restart local v34       #target:Lorg/apache/http/HttpHost;
    .restart local v37       #xWapProfileTagName:Ljava/lang/String;
    .restart local v38       #xWapProfileUrl:Ljava/lang/String;
    :catchall_1
    move-exception v39

    .line 260
    :try_start_b
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 263
    :goto_7
    :try_start_c
    throw v39

    .line 261
    :catch_3
    move-exception v11

    .line 262
    .local v11, e:Ljava/io/IOException;
    const-string v40, "Mms:transaction"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error closing input stream: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 267
    .end local v10           #dis:Ljava/io/DataInputStream;
    .end local v11           #e:Ljava/io/IOException;
    :cond_12
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v39

    if-eqz v39, :cond_1a

    .line 269
    const v7, 0x4c400

    .line 270
    .local v7, bytesTobeRead:I
    new-array v0, v7, [B

    move-object/from16 v35, v0

    .line 271
    .local v35, tempBody:[B
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding is chunked"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v10, Ljava/io/DataInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 276
    .restart local v10       #dis:Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .line 277
    .local v6, bytesRead:I
    const/16 v24, 0x0

    .line 278
    .local v24, offset:I
    const/16 v29, 0x1

    .line 281
    .local v29, readStatus:Z
    :cond_13
    :try_start_d
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    move-result v6

    .line 289
    :try_start_e
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: read ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] bytes"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-lez v6, :cond_14

    .line 292
    sub-int/2addr v7, v6

    .line 293
    add-int v24, v24, v6

    .line 295
    :cond_14
    if-lez v6, :cond_15

    if-gtz v7, :cond_13

    .line 297
    :cond_15
    :goto_8
    if-gez v6, :cond_19

    if-lez v24, :cond_19

    const/16 v39, 0x1

    move/from16 v0, v29

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    .line 300
    move/from16 v0, v24

    new-array v5, v0, [B

    .line 301
    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v24

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: Chunked response length ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v15, Ljava/io/File;

    const-string v39, "/data/anr/automms.dump"

    move-object/from16 v0, v39

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v15, file:Ljava/io/File;
    if-nez v15, :cond_17

    .line 307
    const-string v39, "Mms:transaction"

    const-string v40, "Unable to open file"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 327
    .end local v15           #file:Ljava/io/File;
    :cond_16
    :goto_9
    :try_start_f
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    .line 331
    :goto_a
    :try_start_10
    const-string v39, "Mms:transaction"

    const-string v40, "Data input stream closed"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_6

    .line 282
    :catch_4
    move-exception v11

    .line 283
    .restart local v11       #e:Ljava/io/IOException;
    const/16 v29, 0x0

    .line 284
    :try_start_11
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "httpConnection: error reading input stream"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_8

    .line 326
    .end local v11           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v39

    .line 327
    :try_start_12
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 331
    :goto_b
    :try_start_13
    const-string v40, "Mms:transaction"

    const-string v41, "Data input stream closed"

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v39
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 309
    .restart local v15       #file:Ljava/io/File;
    :cond_17
    const/16 v16, 0x0

    .line 311
    .local v16, fout:Ljava/io/FileOutputStream;
    :try_start_14
    new-instance v17, Ljava/io/FileOutputStream;

    const/16 v39, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v39

    invoke-direct {v0, v15, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_5

    .line 312
    .end local v16           #fout:Ljava/io/FileOutputStream;
    .local v17, fout:Ljava/io/FileOutputStream;
    :try_start_15
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 316
    if-eqz v17, :cond_16

    .line 317
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_9

    .line 313
    .end local v17           #fout:Ljava/io/FileOutputStream;
    .restart local v16       #fout:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v11

    .line 314
    .local v11, e:Ljava/lang/Exception;
    :goto_c
    :try_start_17
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: File operation exception"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 316
    if-eqz v16, :cond_16

    .line 317
    :try_start_18
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    goto :goto_9

    .line 316
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v39

    :goto_d
    if-eqz v16, :cond_18

    .line 317
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V

    :cond_18
    throw v39

    .line 322
    .end local v15           #file:Ljava/io/File;
    .end local v16           #fout:Ljava/io/FileOutputStream;
    :cond_19
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: transfer encoding. Response entity too large or empty. Bigger than 305 K"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto :goto_9

    .line 328
    :catch_6
    move-exception v11

    .line 329
    .local v11, e:Ljava/io/IOException;
    :try_start_19
    const-string v39, "Mms:transaction"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Error closing input stream: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 328
    .end local v11           #e:Ljava/io/IOException;
    :catch_7
    move-exception v11

    .line 329
    .restart local v11       #e:Ljava/io/IOException;
    const-string v40, "Mms:transaction"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "Error closing input stream: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 334
    .end local v6           #bytesRead:I
    .end local v7           #bytesTobeRead:I
    .end local v10           #dis:Ljava/io/DataInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .end local v24           #offset:I
    .end local v29           #readStatus:Z
    .end local v35           #tempBody:[B
    :cond_1a
    const-string v39, "Mms:transaction"

    const-string v40, "httpConnection: Error - No content length and no chunked transfer"

    invoke-static/range {v39 .. v40}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_6

    .line 348
    .end local v5           #body:[B
    .end local v9           #contentEnc:Lorg/apache/http/Header;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #extraHttpParams:Ljava/lang/String;
    .end local v18           #hostUrl:Ljava/net/URI;
    .end local v27           #params:Lorg/apache/http/params/HttpParams;
    .end local v30           #req:Lorg/apache/http/HttpRequest;
    .end local v31           #response:Lorg/apache/http/HttpResponse;
    .end local v33           #status:Lorg/apache/http/StatusLine;
    .end local v34           #target:Lorg/apache/http/HttpHost;
    .end local v37           #xWapProfileTagName:Ljava/lang/String;
    .end local v38           #xWapProfileUrl:Ljava/lang/String;
    :catch_8
    move-exception v11

    .line 349
    .local v11, e:Ljava/lang/IllegalArgumentException;
    :try_start_1a
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 355
    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 350
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v11

    .line 351
    .local v11, e:Ljava/net/SocketException;
    :try_start_1b
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 355
    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 352
    .end local v11           #e:Ljava/net/SocketException;
    :catch_a
    move-exception v11

    .line 353
    .local v11, e:Ljava/lang/Exception;
    :try_start_1c
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/android/mms/transaction/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 355
    if-eqz v8, :cond_c

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 355
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v39

    if-eqz v8, :cond_1b

    .line 356
    invoke-virtual {v8}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1b
    throw v39

    .line 316
    .restart local v5       #body:[B
    .restart local v6       #bytesRead:I
    .restart local v7       #bytesTobeRead:I
    .restart local v9       #contentEnc:Lorg/apache/http/Header;
    .restart local v10       #dis:Ljava/io/DataInputStream;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #extraHttpParams:Ljava/lang/String;
    .restart local v15       #file:Ljava/io/File;
    .restart local v17       #fout:Ljava/io/FileOutputStream;
    .restart local v18       #hostUrl:Ljava/net/URI;
    .restart local v24       #offset:I
    .restart local v27       #params:Lorg/apache/http/params/HttpParams;
    .restart local v29       #readStatus:Z
    .restart local v30       #req:Lorg/apache/http/HttpRequest;
    .restart local v31       #response:Lorg/apache/http/HttpResponse;
    .restart local v33       #status:Lorg/apache/http/StatusLine;
    .restart local v34       #target:Lorg/apache/http/HttpHost;
    .restart local v35       #tempBody:[B
    .restart local v37       #xWapProfileTagName:Ljava/lang/String;
    .restart local v38       #xWapProfileUrl:Ljava/lang/String;
    :catchall_5
    move-exception v39

    move-object/from16 v16, v17

    .end local v17           #fout:Ljava/io/FileOutputStream;
    .restart local v16       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .line 313
    .end local v16           #fout:Ljava/io/FileOutputStream;
    .restart local v17       #fout:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #fout:Ljava/io/FileOutputStream;
    .restart local v16       #fout:Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
