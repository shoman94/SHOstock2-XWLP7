.class public Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;
.super Ljava/lang/Object;
.source "DefaultHttpParamsFactory.java"

# interfaces
.implements Lorg/apache/commons/httpclient/params/HttpParamsFactory;


# instance fields
.field private httpParams:Lorg/apache/commons/httpclient/params/HttpParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method


# virtual methods
.method protected createParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 115
    new-instance v2, Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 117
    const-string v1, "http.useragent"

    const-string v3, "Jakarta Commons-HttpClient/3.1"

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    sget-object v1, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setVersion(Lorg/apache/commons/httpclient/HttpVersion;)V

    .line 121
    const-class v1, Lorg/apache/commons/httpclient/SimpleHttpConnectionManager;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setConnectionManagerClass(Ljava/lang/Class;)V

    .line 123
    const-string v1, "default"

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 125
    const-string v1, "US-ASCII"

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setHttpElementCharset(Ljava/lang/String;)V

    .line 127
    const-string v1, "ISO-8859-1"

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setContentCharset(Ljava/lang/String;)V

    .line 129
    const-string v1, "http.method.retry-handler"

    new-instance v3, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    invoke-direct {v3}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "EEE MMM d HH:mm:ss yyyy"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "EEE dd MMM yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    const-string v3, "http.dateparser.patterns"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    :try_start_0
    const-string v1, "httpclient.useragent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 187
    :goto_0
    if-eqz v1, :cond_0

    .line 189
    const-string v3, "http.useragent"

    invoke-virtual {v2, v3, v1}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    :cond_0
    :try_start_1
    const-string v1, "httpclient.authentication.preemptive"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 205
    :goto_1
    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    const-string v1, "http.authentication.preemptive"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    :cond_1
    :goto_2
    :try_start_2
    const-string v1, "apache.commons.httpclient.cookiespec"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 233
    :goto_3
    if-eqz v0, :cond_2

    .line 235
    const-string v1, "COMPATIBILITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 237
    const-string v0, "compatibility"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    .line 251
    :cond_2
    :goto_4
    return-object v2

    .line 183
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 201
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 213
    :cond_3
    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string v1, "http.authentication.preemptive"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 239
    :cond_4
    const-string v1, "NETSCAPE_DRAFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    const-string v0, "netscape"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_4

    .line 243
    :cond_5
    const-string v1, "RFC2109"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "rfc2109"

    invoke-virtual {v2, v0}, Lorg/apache/commons/httpclient/params/HttpClientParams;->setCookiePolicy(Ljava/lang/String;)V

    goto :goto_4

    .line 229
    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method public declared-synchronized getDefaultParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->createParams()Lorg/apache/commons/httpclient/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/params/DefaultHttpParamsFactory;->httpParams:Lorg/apache/commons/httpclient/params/HttpParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
