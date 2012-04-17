.class public Lmyorg/bouncycastle/crypto/io/SignerInputStream;
.super Ljava/io/FilterInputStream;
.source "SignerInputStream.java"


# instance fields
.field protected signer:Lmyorg/bouncycastle/crypto/Signer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lmyorg/bouncycastle/crypto/Signer;)V
    .locals 0
    .parameter "stream"
    .parameter "signer"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lmyorg/bouncycastle/crypto/Signer;

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
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 21
    .local v0, b:I
    if-ltz v0, :cond_0

    .line 22
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lmyorg/bouncycastle/crypto/Signer;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lmyorg/bouncycastle/crypto/Signer;->update(B)V

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
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/SignerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 29
    .local v0, n:I
    if-lez v0, :cond_0

    .line 30
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/io/SignerInputStream;->signer:Lmyorg/bouncycastle/crypto/Signer;

    invoke-interface {v1, p1, p2, v0}, Lmyorg/bouncycastle/crypto/Signer;->update([BII)V

    .line 32
    :cond_0
    return v0
.end method
