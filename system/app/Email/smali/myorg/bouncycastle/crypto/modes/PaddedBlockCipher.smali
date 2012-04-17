.class public Lmyorg/bouncycastle/crypto/modes/PaddedBlockCipher;
.super Lmyorg/bouncycastle/crypto/BufferedBlockCipher;
.source "PaddedBlockCipher.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 25
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 28
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 30
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 8
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 167
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 168
    .local v0, blockSize:I
    const/4 v3, 0x0

    .line 170
    .local v3, resultLen:I
    iget-boolean v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_3

    .line 171
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_1

    .line 172
    mul-int/lit8 v4, v0, 0x2

    add-int/2addr v4, p2

    array-length v5, p1

    if-le v4, v5, :cond_0

    .line 173
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 177
    iput v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 183
    :cond_1
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v4, v0, v4

    int-to-byte v1, v4

    .line 185
    .local v1, code:B
    :goto_0
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ge v4, v0, :cond_2

    .line 186
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte v1, v4, v5

    .line 187
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    goto :goto_0

    .line 190
    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v6, p2, v3

    invoke-interface {v4, v5, v7, p1, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 213
    .end local v1           #code:B
    :goto_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/PaddedBlockCipher;->reset()V

    .line 215
    return v3

    .line 192
    :cond_3
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ne v4, v0, :cond_5

    .line 193
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, v6, v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    .line 194
    iput v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 202
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int/lit8 v5, v0, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 204
    .local v2, count:I
    if-ltz v2, :cond_4

    if-le v2, v0, :cond_6

    .line 205
    :cond_4
    new-instance v4, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "pad block corrupted"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    .end local v2           #count:I
    :cond_5
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "last block incomplete in decryption"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    .restart local v2       #count:I
    :cond_6
    sub-int/2addr v3, v2

    .line 210
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v4, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public getOutputSize(I)I
    .locals 4
    .parameter "len"

    .prologue
    .line 41
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 42
    .local v1, total:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 44
    .local v0, leftOver:I
    if-nez v0, :cond_1

    .line 45
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v2, :cond_0

    .line 46
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    add-int/2addr v1, v2

    .line 52
    .end local v1           #total:I
    :cond_0
    :goto_0
    return v1

    .restart local v1       #total:I
    :cond_1
    sub-int v2, v1, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    add-int v1, v2, v3

    goto :goto_0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .parameter "len"

    .prologue
    .line 64
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 65
    .local v1, total:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 67
    .local v0, leftOver:I
    if-nez v0, :cond_0

    .line 68
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 71
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 110
    if-gez p3, :cond_0

    .line 111
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 114
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getBlockSize()I

    move-result v0

    .line 115
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/crypto/modes/PaddedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 117
    .local v2, length:I
    if-lez v2, :cond_1

    .line 118
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 119
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 124
    .local v3, resultLen:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 126
    .local v1, gapLen:I
    if-le p3, v1, :cond_2

    .line 127
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v6, p4, p5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 131
    iput v6, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 132
    sub-int/2addr p3, v1

    .line 133
    add-int/2addr p2, v1

    .line 135
    :goto_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 136
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 138
    sub-int/2addr p3, v0

    .line 139
    add-int/2addr p2, v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 147
    return v3
.end method
