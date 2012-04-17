.class public Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;
.super Ljava/lang/Object;
.source "PGPCFBBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z

.field private inlineIv:Z

.field private tmp:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1
    .parameter "cipher"
    .parameter "inlineIv"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 37
    iput-boolean p2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    .line 39
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    .line 40
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    .line 41
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    .line 42
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    .line 43
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    .line 44
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 356
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 357
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 360
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 361
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 365
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 366
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 370
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_3
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v1
.end method

.method private decryptBlockWithIV([BI[BI)I
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 247
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 248
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, p4

    array-length v3, p3

    if-le v2, v3, :cond_1

    .line 252
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 255
    :cond_1
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v2, :cond_3

    .line 256
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_2

    .line 257
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 262
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 304
    .end local v0           #n:I
    :goto_1
    return v1

    .line 265
    :cond_3
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ne v2, v3, :cond_5

    .line 267
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v4, v4, v1

    aput-byte v4, v2, v3

    .line 272
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v4, v4, v6

    aput-byte v4, v2, v3

    .line 274
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 276
    const/4 v0, 0x0

    .restart local v0       #n:I
    :goto_2
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_4

    .line 277
    add-int v2, p4, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 280
    :cond_4
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 284
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 285
    .end local v0           #n:I
    :cond_5
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_7

    .line 287
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p1, p2, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    add-int/lit8 v2, p4, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v1

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 290
    add-int/lit8 v2, p4, 0x1

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v3, v3, v6

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 292
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v2, v3, v1, v4, v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 296
    const/4 v0, 0x0

    .restart local v0       #n:I
    :goto_3
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_6

    .line 297
    add-int v2, p4, v0

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    invoke-direct {p0, v3, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v2

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 300
    :cond_6
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    .end local v0           #n:I
    :cond_7
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto/16 :goto_1
.end method

.method private encryptBlock([BI[BI)I
    .locals 5
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 322
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 326
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 330
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 331
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 335
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v2, p4, v0

    aget-byte v2, p3, v2

    aput-byte v2, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_3
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return v1
.end method

.method private encryptBlockWithIV([BI[BI)I
    .locals 5
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 185
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 186
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 190
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    if-nez v1, :cond_4

    .line 194
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 196
    const/4 v0, 0x0

    .local v0, n:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 197
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 204
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x2

    aget-byte v2, v2, v3

    invoke-direct {p0, v2, v4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 205
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 207
    add-int/lit8 v1, p4, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 211
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 212
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_3
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 219
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 230
    .end local v0           #n:I
    :goto_2
    return v1

    .line 220
    :cond_4
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_6

    .line 221
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v1, v2, v4, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 223
    const/4 v0, 0x0

    .restart local v0       #n:I
    :goto_3
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_5

    .line 224
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 227
    :cond_5
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    .end local v0           #n:I
    :cond_6
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    goto :goto_2
.end method

.method private encryptByte(BI)B
    .locals 1
    .parameter "data"
    .parameter "blockOff"

    .prologue
    .line 168
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    aget-byte v0, v0, p2

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 133
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    .line 135
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 136
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 137
    .local v2, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 139
    .local v1, iv:[B
    array-length v3, v1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 141
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 143
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 151
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 157
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 153
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 155
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .parameter "in"
    .parameter "inOff"
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
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlockWithIV([BI[BI)I

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlockWithIV([BI[BI)I

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iput v3, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 109
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    aput-byte v3, v1, v0

    .line 108
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    goto :goto_1

    .line 117
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 118
    return-void
.end method
