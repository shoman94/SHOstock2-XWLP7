.class public abstract Lorg/apache/commons/httpclient/HttpMethodBase;
.super Ljava/lang/Object;
.source "HttpMethodBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethod;


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private volatile aborted:Z

.field private connectionCloseForced:Z

.field private cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

.field private doAuthentication:Z

.field protected effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

.field private followRedirects:Z

.field private hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private httphost:Lorg/apache/commons/httpclient/HttpHost;

.field private params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

.field private path:Ljava/lang/String;

.field private proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

.field private queryString:Ljava/lang/String;

.field private recoverableExceptionCount:I

.field private requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private requestSent:Z

.field private responseBody:[B

.field private responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

.field private responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field private responseStream:Ljava/io/InputStream;

.field private responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

.field protected statusLine:Lorg/apache/commons/httpclient/StatusLine;

.field private used:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const-class v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 271
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 153
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    .line 157
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 161
    new-instance v0, Lorg/apache/commons/httpclient/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/HeaderGroup;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    .line 165
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->path:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->queryString:Ljava/lang/String;

    .line 176
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 180
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 184
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    .line 188
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->doAuthentication:Z

    .line 199
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpMethodParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpMethodParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    .line 203
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->hostAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 207
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthState;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/auth/AuthState;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->proxyAuthState:Lorg/apache/commons/httpclient/auth/AuthState;

    .line 211
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->used:Z

    .line 218
    iput v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->recoverableExceptionCount:I

    .line 222
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->httphost:Lorg/apache/commons/httpclient/HttpHost;

    .line 234
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 242
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    .line 246
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->aborted:Z

    .line 253
    iput-boolean v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestSent:Z

    .line 257
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->cookiespec:Lorg/apache/commons/httpclient/cookie/CookieSpec;

    .line 273
    return-void
.end method

.method private ensureConnectionRelease()V
    .locals 1

    .prologue
    .line 3532
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 3536
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 3540
    :cond_0
    return-void
.end method


# virtual methods
.method public addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
    .locals 1
    .parameter "footer"

    .prologue
    .line 553
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->addHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 555
    return-void
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
    .locals 1

    .prologue
    .line 3268
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->params:Lorg/apache/commons/httpclient/params/HttpMethodParams;

    return-object v0
.end method

.method public getResponseBodyAsStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1080
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 1096
    :goto_0
    return-object v0

    .line 1086
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    if-eqz v1, :cond_1

    .line 1088
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBody:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1090
    .local v0, byteResponseStream:Ljava/io/InputStream;
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "re-creating response stream from byte array"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1096
    .end local v0           #byteResponseStream:Ljava/io/InputStream;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;
    .locals 1
    .parameter "headerName"

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 821
    const/4 v0, 0x0

    .line 825
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HeaderGroup;->getCondensedHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    goto :goto_0
.end method

.method protected getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
    .locals 1

    .prologue
    .line 803
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HeaderGroup;->getAllHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseTrailerHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseTrailerHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    return-object v0
.end method

.method public getStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->statusLine:Lorg/apache/commons/httpclient/StatusLine;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConnectionCloseForced()Z
    .locals 1

    .prologue
    .line 1330
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    return v0
.end method

.method protected responseBodyConsumed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3470
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseStream:Ljava/io/InputStream;

    .line 3472
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    .line 3474
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 3482
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3484
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 3520
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->connectionCloseForced:Z

    .line 3522
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->ensureConnectionRelease()V

    .line 3524
    return-void

    .line 3490
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3492
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v0

    const-string v1, "http.protocol.warn-extra-input"

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    .line 3496
    if-eqz v0, :cond_2

    .line 3498
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Extra response data detected - closing connection"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 3502
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3508
    :catch_0
    move-exception v0

    .line 3510
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 3512
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    goto :goto_0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .parameter "followRedirects"

    .prologue
    .line 422
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->followRedirects:Z

    .line 424
    return-void
.end method

.method protected shouldCloseConnection(Lorg/apache/commons/httpclient/HttpConnection;)Z
    .locals 5
    .parameter "conn"

    .prologue
    const/4 v1, 0x1

    .line 1369
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;->isConnectionCloseForced()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1371
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Should force-close connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1471
    :cond_0
    :goto_0
    return v1

    .line 1377
    :cond_1
    const/4 v0, 0x0

    .line 1381
    .local v0, connectionHeader:Lorg/apache/commons/httpclient/Header;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1385
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "proxy-connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1395
    :cond_2
    if-nez v0, :cond_3

    .line 1397
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->responseHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1405
    :cond_3
    if-nez v0, :cond_4

    .line 1407
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->requestHeaders:Lorg/apache/commons/httpclient/HeaderGroup;

    const-string v3, "connection"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/HeaderGroup;->getFirstHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 1411
    :cond_4
    if-eqz v0, :cond_8

    .line 1413
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1415
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1417
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should close connection in response to directive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0

    .line 1425
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keep-alive"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1427
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1429
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should NOT close connection in response to directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1435
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1439
    :cond_7
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1441
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown directive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1449
    :cond_8
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Resorting to protocol version default close connection policy"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1453
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_1:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->greaterEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1455
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1457
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should NOT close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1471
    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    sget-object v2, Lorg/apache/commons/httpclient/HttpVersion;->HTTP_1_0:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/HttpVersion;->lessEquals(Lorg/apache/commons/httpclient/HttpVersion;)Z

    move-result v1

    goto/16 :goto_0

    .line 1463
    :cond_a
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1465
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodBase;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Should close connection, using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodBase;->effectiveVersion:Lorg/apache/commons/httpclient/HttpVersion;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method
