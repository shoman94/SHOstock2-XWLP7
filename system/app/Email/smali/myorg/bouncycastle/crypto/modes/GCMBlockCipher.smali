.class public Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;
.super Ljava/lang/Object;
.source "GCMBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/AEADBlockCipher;


# static fields
.field private static final ZEROES:[B


# instance fields
.field private A:[B

.field private H:[B

.field private J0:[B

.field private S:[B

.field private bufBlock:[B

.field private bufOff:I

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private forEncryption:Z

.field private initS:[B

.field private keyParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;

.field private macBlock:[B

.field private macSize:I

.field private multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private nonce:[B

.field private totalLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 2
    .parameter "c"
    .parameter "m"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p2, :cond_1

    .line 58
    new-instance p2, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;

    .end local p2
    invoke-direct {p2}, Lmyorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;-><init>()V

    .line 61
    .restart local p2
    :cond_1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 62
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    .line 63
    return-void
.end method

.method private gCTRBlock([BI[BI)V
    .locals 8
    .parameter "buf"
    .parameter "bufCount"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v6, 0x0

    .line 283
    const/16 v2, 0xf

    .local v2, i:I
    :goto_0
    const/16 v4, 0xc

    if-lt v2, v4, :cond_0

    .line 284
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v0, v4

    .line 285
    .local v0, b:B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    aput-byte v0, v4, v2

    .line 287
    if-eqz v0, :cond_1

    .line 292
    .end local v0           #b:B
    :cond_0
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 293
    .local v3, tmp:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    invoke-interface {v4, v5, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 296
    iget-boolean v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v4, :cond_2

    .line 297
    sget-object v4, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    rsub-int/lit8 v5, p2, 0x10

    invoke-static {v4, p2, v3, p2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    move-object v1, v3

    .line 303
    .local v1, hashBytes:[B
    :goto_1
    add-int/lit8 v2, p2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 304
    aget-byte v4, v3, v2

    aget-byte v5, p1, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    .line 305
    add-int v4, p4, v2

    aget-byte v5, v3, v2

    aput-byte v5, p3, v4

    .line 303
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 283
    .end local v1           #hashBytes:[B
    .end local v3           #tmp:[B
    .restart local v0       #b:B
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 300
    .end local v0           #b:B
    .restart local v3       #tmp:[B
    :cond_2
    move-object v1, p1

    .restart local v1       #hashBytes:[B
    goto :goto_1

    .line 309
    :cond_3
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v1}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 310
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v4, v5}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 312
    iget-wide v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 313
    return-void
.end method

.method private gHASH([B)[B
    .locals 6
    .parameter "b"

    .prologue
    const/16 v5, 0x10

    .line 316
    new-array v1, v5, [B

    .line 318
    .local v1, Y:[B
    const/4 v3, 0x0

    .local v3, pos:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 319
    new-array v0, v5, [B

    .line 320
    .local v0, X:[B
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 321
    .local v2, num:I
    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    invoke-static {v1, v0}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 323
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v4, v1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 318
    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    .line 326
    .end local v0           #X:[B
    .end local v2           #num:I
    :cond_0
    return-object v1
.end method

.method private static packLength(J[BI)V
    .locals 2
    .parameter "count"
    .parameter "bs"
    .parameter "off"

    .prologue
    .line 356
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 357
    long-to-int v0, p0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lmyorg/bouncycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 358
    return-void
.end method

.method private reset(Z)V
    .locals 3
    .parameter "clearMac"

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 266
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v0}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 267
    iput v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 270
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v0, v2}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 274
    :cond_0
    if-eqz p1, :cond_1

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 278
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 279
    return-void
.end method

.method private static xor([B[B)V
    .locals 3
    .parameter "block"
    .parameter "val"

    .prologue
    .line 350
    const/16 v0, 0xf

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 351
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 350
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x8

    const/16 v10, 0x10

    const/4 v9, 0x0

    .line 207
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 208
    .local v1, extra:I
    iget-boolean v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v6, :cond_1

    .line 209
    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    if-ge v1, v6, :cond_0

    .line 210
    new-instance v6, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "data too short"

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 212
    :cond_0
    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v1, v6

    .line 215
    :cond_1
    if-lez v1, :cond_2

    .line 216
    new-array v5, v10, [B

    .line 217
    .local v5, tmp:[B
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    invoke-static {v6, v9, v5, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-direct {p0, v5, v1, p1, p2}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    .line 222
    .end local v5           #tmp:[B
    :cond_2
    new-array v0, v10, [B

    .line 223
    .local v0, X:[B
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    array-length v6, v6

    int-to-long v6, v6

    mul-long/2addr v6, v11

    invoke-static {v6, v7, v0, v9}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 224
    iget-wide v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    mul-long/2addr v6, v11

    const/16 v8, 0x8

    invoke-static {v6, v7, v0, v8}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 226
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v6, v0}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 227
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-interface {v6, v7}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    .line 231
    new-array v4, v10, [B

    .line 232
    .local v4, tag:[B
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v6, v7, v9, v4, v9}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 233
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    invoke-static {v4, v6}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 235
    move v3, v1

    .line 238
    .local v3, resultLen:I
    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v6, v6, [B

    iput-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 239
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-boolean v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v6, :cond_4

    .line 243
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v7, p2

    iget v8, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v9, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v3, v6

    .line 255
    :cond_3
    invoke-direct {p0, v9}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->reset(Z)V

    .line 257
    return v3

    .line 248
    :cond_4
    iget v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    new-array v2, v6, [B

    .line 249
    .local v2, msgMac:[B
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v6, v1, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    invoke-static {v6, v2}, Lmyorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 251
    new-instance v6, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "mac check in GCM failed"

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getOutputSize(I)I
    .locals 2
    .parameter "len"

    .prologue
    .line 150
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 151
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/2addr v0, v1

    .line 154
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 158
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 10
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/16 v5, 0x10

    const/4 v8, 0x0

    .line 75
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    .line 76
    iput-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macBlock:[B

    .line 78
    instance-of v4, p2, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v4, :cond_3

    move-object v3, p2

    .line 79
    check-cast v3, Lmyorg/bouncycastle/crypto/params/AEADParameters;

    .line 81
    .local v3, param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 82
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 84
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v2

    .line 85
    .local v2, macSizeBits:I
    const/16 v4, 0x60

    if-lt v2, v4, :cond_0

    const/16 v4, 0x80

    if-gt v2, v4, :cond_0

    rem-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_1

    .line 86
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for MAC size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_1
    div-int/lit8 v4, v2, 0x8

    iput v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 90
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lmyorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 102
    .end local v2           #macSizeBits:I
    .end local v3           #param:Lmyorg/bouncycastle/crypto/params/AEADParameters;
    :goto_0
    if-eqz p1, :cond_5

    move v1, v5

    .line 103
    .local v1, bufLength:I
    :goto_1
    new-array v4, v1, [B

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    .line 105
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    if-ge v4, v9, :cond_6

    .line 106
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "IV must be at least 1 byte"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v1           #bufLength:I
    :cond_3
    instance-of v4, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v4, :cond_4

    move-object v3, p2

    .line 92
    check-cast v3, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 94
    .local v3, param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    .line 95
    iput-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 96
    iput v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    .line 97
    invoke-virtual {v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 99
    .end local v3           #param:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "invalid parameters passed to GCM"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_5
    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    add-int/lit8 v1, v4, 0x10

    goto :goto_1

    .line 109
    .restart local v1       #bufLength:I
    :cond_6
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    if-nez v4, :cond_7

    .line 111
    new-array v4, v8, [B

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    .line 115
    :cond_7
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->keyParam:Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v4, v9, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 121
    new-array v4, v5, [B

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    .line 122
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    sget-object v6, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->ZEROES:[B

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6, v8, v7, v8}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 123
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->H:[B

    invoke-interface {v4, v6}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    .line 125
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->A:[B

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    .line 127
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_8

    .line 128
    new-array v4, v5, [B

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 129
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    iget-object v6, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v6, v6

    invoke-static {v4, v8, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    const/16 v5, 0xf

    aput-byte v9, v4, v5

    .line 139
    :goto_2
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->initS:[B

    invoke-static {v4}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->S:[B

    .line 140
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->counter:[B

    .line 141
    iput v8, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 142
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->totalLength:J

    .line 143
    return-void

    .line 132
    :cond_8
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    invoke-direct {p0, v4}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->gHASH([B)[B

    move-result-object v4

    iput-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    .line 133
    new-array v0, v5, [B

    .line 134
    .local v0, X:[B
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->nonce:[B

    array-length v4, v4

    int-to-long v4, v4

    const-wide/16 v6, 0x8

    mul-long/2addr v4, v6

    const/16 v6, 0x8

    invoke-static {v4, v5, v0, v6}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->packLength(J[BI)V

    .line 135
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-static {v4, v0}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->xor([B[B)V

    .line 136
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->multiplier:Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->J0:[B

    invoke-interface {v4, v5}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    goto :goto_2
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
            Lmyorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, resultLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, p3, :cond_2

    .line 171
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 173
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 174
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    add-int v3, p5, v1

    invoke-direct {p0, v2, v6, p4, v3}, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->gCTRBlock([BI[BI)V

    .line 175
    iget-boolean v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->forEncryption:Z

    if-nez v2, :cond_0

    .line 176
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    const/4 v4, 0x0

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->macSize:I

    invoke-static {v2, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufBlock:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lmyorg/bouncycastle/crypto/modes/GCMBlockCipher;->bufOff:I

    .line 181
    add-int/lit8 v1, v1, 0x10

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_2
    return v1
.end method
