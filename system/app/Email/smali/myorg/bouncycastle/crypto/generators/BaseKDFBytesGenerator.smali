.class public Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.super Ljava/lang/Object;
.source "BaseKDFBytesGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private counterStart:I

.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private iv:[B

.field private shared:[B


# direct methods
.method protected constructor <init>(ILmyorg/bouncycastle/crypto/Digest;)V
    .locals 0
    .parameter "counterStart"
    .parameter "digest"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 31
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 32
    return-void
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 12
    .parameter "out"
    .parameter "outOff"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 67
    array-length v7, p1

    sub-int/2addr v7, p3

    if-ge v7, p2, :cond_0

    .line 68
    new-instance v7, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer too small"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 71
    :cond_0
    int-to-long v4, p3

    .line 72
    .local v4, oBytes:J
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    .line 80
    .local v6, outLen:I
    const-wide v7, 0x1ffffffffL

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    .line 81
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Output length too large"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    :cond_1
    int-to-long v7, v6

    add-long/2addr v7, v4

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    int-to-long v9, v6

    div-long/2addr v7, v9

    long-to-int v0, v7

    .line 86
    .local v0, cThreshold:I
    const/4 v2, 0x0

    .line 88
    .local v2, dig:[B
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v2, v7, [B

    .line 90
    iget v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->counterStart:I

    .line 92
    .local v1, counter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 93
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 95
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 96
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x10

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 97
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 98
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    int-to-byte v8, v1

    invoke-interface {v7, v8}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 100
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    if-eqz v7, :cond_2

    .line 101
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    array-length v9, v9

    invoke-interface {v7, v8, v11, v9}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 104
    :cond_2
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v2, v11}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 106
    if-le p3, v6, :cond_3

    .line 107
    invoke-static {v2, v11, p1, p2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    add-int/2addr p2, v6

    .line 109
    sub-int/2addr p3, v6

    .line 114
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {v2, v11, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 117
    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 119
    return p3
.end method

.method public init(Lmyorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 35
    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 36
    check-cast v0, Lmyorg/bouncycastle/crypto/params/KDFParameters;

    .line 38
    .local v0, p:Lmyorg/bouncycastle/crypto/params/KDFParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getSharedSecret()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 39
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/KDFParameters;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    .line 48
    .end local v0           #p:Lmyorg/bouncycastle/crypto/params/KDFParameters;
    :goto_0
    return-void

    .line 40
    :cond_0
    instance-of v1, p1, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 41
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;

    .line 43
    .local v0, p:Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;->getSeed()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->shared:[B

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;->iv:[B

    goto :goto_0

    .line 46
    .end local v0           #p:Lmyorg/bouncycastle/crypto/params/ISO18033KDFParameters;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "KDF parameters required for KDF2Generator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
