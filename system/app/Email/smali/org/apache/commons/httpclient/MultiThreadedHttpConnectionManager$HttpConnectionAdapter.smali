.class Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;
.super Lorg/apache/commons/httpclient/HttpConnection;
.source "MultiThreadedHttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpConnectionAdapter"
.end annotation


# instance fields
.field private wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1744
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1746
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 1754
    :cond_0
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1822
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1828
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastResponseInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1850
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getLastResponseInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1856
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 1758
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1764
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1864
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v0

    .line 1870
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .locals 1

    .prologue
    .line 1878
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v0

    .line 1884
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1892
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 1898
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 1906
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1908
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v0

    .line 1912
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getWrappedConnection()Lorg/apache/commons/httpclient/HttpConnection;
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    return-object v0
.end method

.method protected hasConnection()Z
    .locals 1

    .prologue
    .line 1728
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1952
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v0

    .line 1958
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProxied()Z
    .locals 1

    .prologue
    .line 1980
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    .line 1986
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseAvailable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1994
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isResponseAvailable()Z

    move-result v0

    .line 2000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 2022
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    .line 2028
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 2036
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2038
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->isTransparent()Z

    move-result v0

    .line 2042
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseConnection()V
    .locals 2

    .prologue
    .line 2152
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->isLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 2156
    .local v0, wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    .line 2158
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 2166
    .end local v0           #wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;
    :cond_0
    return-void
.end method

.method public setLastResponseInputStream(Ljava/io/InputStream;)V
    .locals 1
    .parameter "inStream"

    .prologue
    .line 2216
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->hasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    iget-object v0, p0, Lorg/apache/commons/httpclient/MultiThreadedHttpConnectionManager$HttpConnectionAdapter;->wrappedConnection:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->setLastResponseInputStream(Ljava/io/InputStream;)V

    .line 2226
    :cond_0
    return-void
.end method
