.class public Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;


# instance fields
.field private associatedText:[B

.field private blockSize:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private data:Ljava/io/ByteArrayOutputStream;

.field private forEncryption:Z

.field private keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    .line 39
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 40
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 41
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 43
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 10
    .parameter "data"
    .parameter "dataOff"
    .parameter "dataLen"
    .parameter "macBlock"

    .prologue
    const/4 v9, 0x0

    .line 226
    new-instance v1, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget v7, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v1, v6, v7}, Lmyorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    .line 228
    .local v1, cMac:Lmyorg/bouncycastle/crypto/Mac;
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 233
    const/16 v6, 0x10

    new-array v0, v6, [B

    .line 235
    .local v0, b0:[B
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 236
    aget-byte v6, v0, v9

    or-int/lit8 v6, v6, 0x40

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    .line 239
    :cond_0
    aget-byte v6, v0, v9

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    div-int/lit8 v7, v7, 0x2

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    .line 241
    aget-byte v6, v0, v9

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v7, v7

    rsub-int/lit8 v7, v7, 0xf

    add-int/lit8 v7, v7, -0x1

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v0, v9

    .line 243
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v7, 0x1

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v8, v8

    invoke-static {v6, v9, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    move v5, p3

    .line 246
    .local v5, q:I
    const/4 v2, 0x1

    .line 247
    .local v2, count:I
    :goto_0
    if-lez v5, :cond_1

    .line 248
    array-length v6, v0

    sub-int/2addr v6, v2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 249
    ushr-int/lit8 v5, v5, 0x8

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_1
    array-length v6, v0

    invoke-interface {v1, v0, v9, v6}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 258
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    const v7, 0xff00

    if-ge v6, v7, :cond_2

    .line 262
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 263
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 265
    const/4 v3, 0x2

    .line 278
    .local v3, extra:I
    :goto_1
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v7, v7

    invoke-interface {v1, v6, v9, v7}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 280
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    add-int/2addr v6, v3

    rem-int/lit8 v3, v6, 0x10

    .line 281
    if-eqz v3, :cond_3

    .line 282
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    rsub-int/lit8 v6, v3, 0x10

    if-eq v4, v6, :cond_3

    .line 283
    invoke-interface {v1, v9}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 268
    .end local v3           #extra:I
    .end local v4           #i:I
    :cond_2
    const/4 v6, -0x1

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 269
    const/4 v6, -0x2

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 270
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 271
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 272
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 273
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v6, v6

    int-to-byte v6, v6

    invoke-interface {v1, v6}, Lmyorg/bouncycastle/crypto/Mac;->update(B)V

    .line 275
    const/4 v3, 0x6

    .restart local v3       #extra:I
    goto :goto_1

    .line 291
    .end local v3           #extra:I
    :cond_3
    invoke-interface {v1, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 293
    invoke-interface {v1, p4, v9}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v6

    return v6
.end method

.method private hasAssociatedText()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 101
    .local v1, text:[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII)[B

    move-result-object v0

    .line 103
    .local v0, enc:[B
    array-length v2, v0

    invoke-static {v0, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 107
    array-length v2, v0

    return v2
.end method

.method public getOutputSize(I)I
    .locals 2
    .parameter "len"

    .prologue
    .line 134
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 61
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 62
    check-cast v0, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    .line 64
    .local v0, param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 65
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    .line 66
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 67
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lmyorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 78
    .end local v0           #param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    :goto_0
    return-void

    .line 68
    :cond_0
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 69
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 71
    .local v0, param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:[B

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 74
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    goto :goto_0

    .line 76
    .end local v0           #param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid parameters passed to CCM"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public processBytes([BII[BI)I
    .locals 1
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public processPacket([BII)[B
    .locals 12
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 143
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    if-nez v8, :cond_0

    .line 144
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "CCM cipher unitialized."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 147
    :cond_0
    new-instance v2, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-direct {v2, v8}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 148
    .local v2, ctrCipher:Lmyorg/bouncycastle/crypto/BlockCipher;
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v5, v8, [B

    .line 151
    .local v5, iv:[B
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v8, v8

    rsub-int/lit8 v8, v8, 0xf

    add-int/lit8 v8, v8, -0x1

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v5, v11

    .line 153
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v9, 0x1

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v10, v10

    invoke-static {v8, v11, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-boolean v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v9, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v10, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    invoke-direct {v9, v10, v5}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v2, v8, v9}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 157
    iget-boolean v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v8, :cond_3

    .line 158
    move v4, p2

    .line 159
    .local v4, index:I
    const/4 v7, 0x0

    .line 161
    .local v7, outOff:I
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v8, p3

    new-array v6, v8, [B

    .line 163
    .local v6, out:[B
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v8}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 165
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 167
    :goto_0
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v8, p3, v8

    if-ge v4, v8, :cond_1

    .line 169
    invoke-interface {v2, p1, v4, v6, v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 170
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    .line 171
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_0

    .line 174
    :cond_1
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    .line 176
    .local v0, block:[B
    sub-int v8, p3, v4

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    invoke-interface {v2, v0, v11, v0, v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 180
    sub-int v8, p3, v4

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    sub-int v8, p3, v4

    add-int/2addr v7, v8

    .line 184
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v9, v6

    sub-int/2addr v9, v7

    invoke-static {v8, v11, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_2
    return-object v6

    .line 186
    .end local v0           #block:[B
    .end local v4           #index:I
    .end local v6           #out:[B
    .end local v7           #outOff:I
    :cond_3
    move v4, p2

    .line 187
    .restart local v4       #index:I
    const/4 v7, 0x0

    .line 189
    .restart local v7       #outOff:I
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v8, p3, v8

    new-array v6, v8, [B

    .line 191
    .restart local v6       #out:[B
    add-int v8, p2, p3

    iget v9, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v10, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {p1, v8, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v9, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v2, v8, v11, v9, v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 195
    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v8, v8

    if-eq v3, v8, :cond_4

    .line 196
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v11, v8, v3

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 199
    :cond_4
    :goto_2
    array-length v8, v6

    iget v9, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_5

    .line 200
    invoke-interface {v2, p1, v4, v6, v7}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 201
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v7, v8

    .line 202
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v8

    goto :goto_2

    .line 205
    :cond_5
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v8, [B

    .line 207
    .restart local v0       #block:[B
    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {p1, v4, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    invoke-interface {v2, v0, v11, v0, v11}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 211
    array-length v8, v6

    sub-int/2addr v8, v7

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v8, [B

    .line 215
    .local v1, calculatedMacBlock:[B
    array-length v8, v6

    invoke-direct {p0, v6, v11, v8, v1}, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 217
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v8, v1}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v8

    if-nez v8, :cond_2

    .line 218
    new-instance v8, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v9, "mac check in CCM failed"

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 112
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CCMBlockCipher;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 113
    return-void
.end method
