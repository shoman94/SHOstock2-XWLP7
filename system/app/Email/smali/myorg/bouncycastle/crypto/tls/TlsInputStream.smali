.class public Lmyorg/bouncycastle/crypto/tls/TlsInputStream;
.super Ljava/io/InputStream;
.source "TlsInputStream.java"


# instance fields
.field private buf:[B

.field private handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->close()V

    .line 31
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    .line 24
    const/4 v0, -0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsInputStream;->handler:Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;->readApplicationData([BII)I

    move-result v0

    return v0
.end method
