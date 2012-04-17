.class public Lorg/apache/commons/httpclient/util/HttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private method:Lorg/apache/commons/httpclient/HttpMethod;

.field private url:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-class v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 151
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An HTTP URL connection can only be constructed from a HttpMethod class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.connect()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 217
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.disconnect()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllowUserInteraction()Z
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getAllowUserInteraction()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 622
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getContent()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 506
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "classes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getContent(Class[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultUseCaches()Z
    .locals 2

    .prologue
    .line 694
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getDefaultUseCaches()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 696
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoInput()Z
    .locals 2

    .prologue
    .line 560
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getDoInput()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 562
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoOutput()Z
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getDoOutput()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 592
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getErrorStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 188
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    .line 373
    sget-object v1, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpURLConnection.getHeaderField(int)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 381
    if-nez p1, :cond_0

    .line 383
    iget-object v1, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/StatusLine;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    :goto_0
    return-object v1

    .line 391
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 393
    .local v0, headers:[Lorg/apache/commons/httpclient/Header;
    if-ltz p1, :cond_1

    array-length v1, v0

    if-le p1, v1, :cond_2

    .line 395
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 399
    :cond_2
    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "name"

    .prologue
    .line 299
    sget-object v2, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpURLConnection.getHeaderField(String)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 305
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 307
    .local v0, headers:[Lorg/apache/commons/httpclient/Header;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 309
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 317
    :goto_1
    return-object v2

    .line 307
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 317
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 4
    .parameter "keyPosition"

    .prologue
    const/4 v1, 0x0

    .line 332
    sget-object v2, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpURLConnection.getHeaderFieldKey(int)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 340
    if-nez p1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-object v1

    .line 350
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v2}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 352
    .local v0, headers:[Lorg/apache/commons/httpclient/Header;
    if-ltz p1, :cond_0

    array-length v2, v0

    if-gt p1, v2, :cond_0

    .line 358
    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/Header;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIfModifiedSince()J
    .locals 2

    .prologue
    .line 680
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getIfmodifiedSince()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 682
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getInputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .locals 2

    .prologue
    .line 460
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getInstanceFollowRedirects()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getOutputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 530
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermission()Ljava/security/Permission;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getPermission()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 492
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getRequestMethod()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 740
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getRequestProperty()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 742
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getResponseCode()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getResponseMessage()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->method:Lorg/apache/commons/httpclient/HttpMethod;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getURL()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getUseCaches()Z
    .locals 2

    .prologue
    .line 650
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.getUseCaches()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 652
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowUserInteraction(Z)V
    .locals 2
    .parameter "isAllowInteraction"

    .prologue
    .line 604
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setAllowUserInteraction(boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 606
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultUseCaches(Z)V
    .locals 2
    .parameter "isUsingCaches"

    .prologue
    .line 708
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setDefaultUseCaches(boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 710
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDoInput(Z)V
    .locals 2
    .parameter "isInput"

    .prologue
    .line 544
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setDoInput()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 546
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDoOutput(Z)V
    .locals 2
    .parameter "isOutput"

    .prologue
    .line 574
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setDoOutput()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 576
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIfModifiedSince(J)V
    .locals 2
    .parameter "modificationDate"

    .prologue
    .line 664
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setIfModifiedSince(long)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 666
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstanceFollowRedirects(Z)V
    .locals 2
    .parameter "isFollowingRedirects"

    .prologue
    .line 446
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setInstanceFollowRedirects(boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .locals 2
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setRequestMethod(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 476
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 724
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setRequestProperty()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 726
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseCaches(Z)V
    .locals 2
    .parameter "isUsingCaches"

    .prologue
    .line 634
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.setUseCaches(boolean)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This class can only be used with alreadyretrieved data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usingProxy()Z
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lorg/apache/commons/httpclient/util/HttpURLConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpURLConnection.usingProxy()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 234
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
