.class public Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;
.super Ljava/lang/Object;
.source "BlockCipherMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 117
    .local v0, blockSize:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_0

    .line 118
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte v4, v1, v2

    .line 119
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 124
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 128
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v1
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 62
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->reset()V

    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 65
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 147
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 148
    return-void
.end method

.method public update(B)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    .line 72
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 74
    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 77
    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 78
    return-void
.end method

.method public update([BII)V
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 81
    if-gez p3, :cond_0

    .line 82
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t have a negative input length!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 85
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 86
    .local v0, blockSize:I
    const/4 v2, 0x0

    .line 87
    .local v2, resultLen:I
    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    sub-int v1, v0, v3

    .line 89
    .local v1, gapLen:I
    if-le p3, v1, :cond_1

    .line 90
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 94
    iput v6, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 95
    sub-int/2addr p3, v1

    .line 96
    add-int/2addr p2, v1

    .line 98
    :goto_0
    if-le p3, v0, :cond_1

    .line 99
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->mac:[B

    invoke-interface {v3, p1, p2, v4, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    .line 101
    sub-int/2addr p3, v0

    .line 102
    add-int/2addr p2, v0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->buf:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v3, v4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lmyorg/bouncycastle/crypto/macs/BlockCipherMac;->bufOff:I

    .line 109
    return-void
.end method
