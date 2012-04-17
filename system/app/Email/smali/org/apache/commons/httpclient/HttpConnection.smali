.class public Lorg/apache/commons/httpclient/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final CRLF:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private inputStream:Ljava/io/InputStream;

.field protected isOpen:Z

.field private lastResponseInputStream:Ljava/io/InputStream;

.field private localAddress:Ljava/net/InetAddress;

.field private locked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private portNumber:I

.field private protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

.field private proxyHostName:Ljava/lang/String;

.field private proxyPortNumber:I

.field private socket:Ljava/net/Socket;

.field private tunnelEstablished:Z

.field private usingSecureSocket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1861
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->CRLF:[B

    .line 1867
    const-class v0, Lorg/apache/commons/httpclient/HttpConnection;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    .line 1861
    nop

    :array_0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1615
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.close()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1617
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->closeSocketAndStreams()V

    .line 1619
    return-void
.end method

.method protected closeSocketAndStreams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1711
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpConnection.closeSockedAndStreams()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1713
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    .line 1717
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 1719
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_0

    .line 1721
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1723
    .local v1, temp:Ljava/io/OutputStream;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1727
    :try_start_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1739
    .end local v1           #temp:Ljava/io/OutputStream;
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 1741
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1743
    .local v1, temp:Ljava/io/InputStream;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1747
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1759
    .end local v1           #temp:Ljava/io/InputStream;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 1761
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1763
    .local v1, temp:Ljava/net/Socket;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1767
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1779
    .end local v1           #temp:Ljava/net/Socket;
    :cond_2
    :goto_2
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 1781
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 1783
    return-void

    .line 1729
    .local v1, temp:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 1731
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing output"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1749
    .end local v0           #ex:Ljava/lang/Exception;
    .local v1, temp:Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 1751
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing input"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1769
    .end local v0           #ex:Ljava/lang/Exception;
    .local v1, temp:Ljava/net/Socket;
    :catch_2
    move-exception v0

    .line 1771
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing socket"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastResponseInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    if-gez v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1bb

    .line 408
    :goto_0
    return v0

    .line 404
    :cond_0
    const/16 v0, 0x50

    goto :goto_0

    .line 408
    :cond_1
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    goto :goto_0
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    return v0
.end method

.method protected isLocked()Z
    .locals 1

    .prologue
    .line 1684
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    return v0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1225
    sget-object v1, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnection.isResponseAvailable()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1227
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1233
    :cond_0
    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 1142
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseConnection()V
    .locals 2

    .prologue
    .line 1653
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.releaseConnection()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1655
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    if-eqz v0, :cond_0

    .line 1657
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection is locked.  Call to releaseConnection() ignored."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1671
    :goto_0
    return-void

    .line 1659
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v0, :cond_1

    .line 1661
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Releasing connection back to connection manager."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1663
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_0

    .line 1667
    :cond_1
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "HttpConnectionManager is null.  Connection cannot be released."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLastResponseInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inStream"

    .prologue
    .line 765
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 767
    return-void
.end method
