.class public Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lmyorg/bouncycastle/crypto/BufferedBlockCipher;
.source "CTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .parameter "cipher"

    .prologue
    .line 21
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 22
    instance-of v0, p1, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lmyorg/bouncycastle/crypto/modes/CFBBlockCipher;

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 28
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    .line 30
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 32
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11
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
    const/4 v10, 0x0

    .line 164
    iget v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    array-length v8, p1

    if-le v7, v8, :cond_0

    .line 165
    new-instance v7, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v8, "output buffer to small in doFinal"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    .line 169
    .local v1, blockSize:I
    iget v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v5, v7, v1

    .line 170
    .local v5, len:I
    new-array v0, v1, [B

    .line 172
    .local v0, block:[B
    iget-boolean v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v7, :cond_5

    .line 173
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 175
    iget v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-ge v7, v1, :cond_1

    .line 176
    new-instance v7, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v8, "need at least one block of input for CTS"

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    :cond_1
    iget v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v7, v7

    if-eq v3, v7, :cond_2

    .line 180
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    aput-byte v8, v7, v3

    .line 179
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_2
    move v3, v1

    :goto_1
    iget v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_3

    .line 184
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v8, v7, v3

    sub-int v9, v3, v1

    aget-byte v9, v0, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 187
    :cond_3
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_4

    .line 188
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    .line 190
    .local v2, c:Lmyorg/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v7, v1, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 195
    .end local v2           #c:Lmyorg/bouncycastle/crypto/BlockCipher;
    :goto_2
    add-int v7, p2, v1

    invoke-static {v0, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :goto_3
    iget v6, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 219
    .local v6, offset:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    .line 221
    return v6

    .line 192
    .end local v6           #offset:I
    :cond_4
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v1, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    .line 197
    .end local v3           #i:I
    :cond_5
    new-array v4, v1, [B

    .line 199
    .local v4, lastBlock:[B
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    instance-of v7, v7, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v7, :cond_6

    .line 200
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    check-cast v7, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;

    move-result-object v2

    .line 202
    .restart local v2       #c:Lmyorg/bouncycastle/crypto/BlockCipher;
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v2, v7, v10, v0, v10}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 207
    .end local v2           #c:Lmyorg/bouncycastle/crypto/BlockCipher;
    :goto_4
    move v3, v1

    .restart local v3       #i:I
    :goto_5
    iget v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eq v3, v7, :cond_7

    .line 208
    sub-int v7, v3, v1

    sub-int v8, v3, v1

    aget-byte v8, v0, v8

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aget-byte v9, v9, v3

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 204
    .end local v3           #i:I
    :cond_6
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v7, v8, v10, v0, v10}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_4

    .line 211
    .restart local v3       #i:I
    :cond_7
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v7, v1, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v0, v10, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 214
    add-int v7, p2, v1

    invoke-static {v4, v10, p1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public getOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 62
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 3
    .parameter "len"

    .prologue
    .line 43
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 44
    .local v1, total:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .line 46
    .local v0, leftOver:I
    if-nez v0, :cond_0

    .line 47
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v1, v2

    .line 50
    :goto_0
    return v2

    :cond_0
    sub-int v2, v1, v0

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 8
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
    const/4 v7, 0x0

    .line 105
    if-gez p3, :cond_0

    .line 106
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 110
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 112
    .local v2, length:I
    if-lez v2, :cond_1

    .line 113
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 114
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_1
    const/4 v3, 0x0

    .line 119
    .local v3, resultLen:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 121
    .local v1, gapLen:I
    if-le p3, v1, :cond_2

    .line 122
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 125
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 129
    sub-int/2addr p3, v1

    .line 130
    add-int/2addr p2, v1

    .line 132
    :goto_0
    if-le p3, v0, :cond_2

    .line 133
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 135
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    sub-int/2addr p3, v0

    .line 138
    add-int/2addr p2, v0

    goto :goto_0

    .line 142
    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 146
    return v3
.end method
