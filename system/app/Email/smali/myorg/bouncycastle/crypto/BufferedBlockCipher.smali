.class public Lmyorg/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;
.source "BufferedBlockCipher.java"


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 5
    .parameter "cipher"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 36
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    .line 37
    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 42
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, name:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 45
    .local v0, idx:I
    if-lez v0, :cond_0

    const-string v2, "PGP"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    .line 47
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v2, :cond_1

    .line 48
    iput-boolean v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    .line 54
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 45
    goto :goto_0

    .line 50
    :cond_1
    if-lez v0, :cond_3

    const-string v2, "CFB"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OFB"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OpenPGP"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "SIC"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "GCTR"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_2
    iput-boolean v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
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
    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x0

    .line 229
    .local v0, resultLen:I
    iget v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 230
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v1, :cond_2

    .line 234
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 235
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 236
    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 237
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 244
    return v0

    .line 238
    :cond_2
    iget v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    if-eqz v1, :cond_1

    .line 239
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .parameter "length"

    .prologue
    .line 124
    iget v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 4
    .parameter "len"

    .prologue
    .line 101
    iget v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v1, p1, v2

    .line 104
    .local v1, total:I
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v2, v1, v2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 110
    .local v0, leftOver:I
    :goto_0
    sub-int v2, v1, v0

    return v2

    .line 107
    .end local v0           #leftOver:I
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v2

    rem-int v0, v1, v2

    .restart local v0       #leftOver:I
    goto :goto_0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    .line 78
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 81
    return-void
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

    .line 165
    if-gez p3, :cond_0

    .line 166
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t have a negative input length!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    .line 170
    .local v0, blockSize:I
    invoke-virtual {p0, p3}, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v2

    .line 172
    .local v2, length:I
    if-lez v2, :cond_1

    .line 173
    add-int v4, p5, v2

    array-length v5, p4

    if-le v4, v5, :cond_1

    .line 174
    new-instance v4, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v5, "output buffer too short"

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_1
    const/4 v3, 0x0

    .line 179
    .local v3, resultLen:I
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int v1, v4, v5

    .line 181
    .local v1, gapLen:I
    if-le p3, v1, :cond_2

    .line 182
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v4, v5, v7, p4, p5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 186
    iput v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 187
    sub-int/2addr p3, v1

    .line 188
    add-int/2addr p2, v1

    .line 190
    :goto_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v4

    if-le p3, v4, :cond_2

    .line 191
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v3

    invoke-interface {v4, p1, p2, p4, v5}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 193
    sub-int/2addr p3, v0

    .line 194
    add-int/2addr p2, v0

    goto :goto_0

    .line 198
    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 202
    iget v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v5, v5

    if-ne v4, v5, :cond_3

    .line 203
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    add-int v6, p5, v3

    invoke-interface {v4, v5, v7, p4, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v3, v4

    .line 204
    iput v7, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 207
    :cond_3
    return v3
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 256
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    aput-byte v2, v1, v0

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_0
    iput v2, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    .line 264
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 265
    return-void
.end method
