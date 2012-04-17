.class public Lmyorg/bouncycastle/crypto/tls/CombinedHash;
.super Ljava/lang/Object;
.source "CombinedHash.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Digest;


# instance fields
.field private md5:Lmyorg/bouncycastle/crypto/Digest;

.field private sha1:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    .line 13
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 49
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    .line 50
    .local v0, i1:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    add-int/lit8 v3, p2, 0x10

    invoke-interface {v2, p1, v3}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    .line 51
    .local v1, i2:I
    add-int v2, v0, v1

    return v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for TLS 1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x24

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 59
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 60
    return-void
.end method

.method public update(B)V
    .locals 1
    .parameter "in"

    .prologue
    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 34
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 35
    return-void
.end method

.method public update([BII)V
    .locals 1
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 41
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->md5:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 42
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/CombinedHash;->sha1:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 43
    return-void
.end method
