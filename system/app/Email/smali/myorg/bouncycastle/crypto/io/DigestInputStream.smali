.class public Lmyorg/bouncycastle/crypto/io/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .parameter "stream"
    .parameter "digest"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 16
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 21
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 22
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lmyorg/bouncycastle/crypto/Digest;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 24
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 29
    .local v0, n:I
    if-lez v0, :cond_0

    .line 30
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, v0}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 32
    :cond_0
    return v0
.end method
