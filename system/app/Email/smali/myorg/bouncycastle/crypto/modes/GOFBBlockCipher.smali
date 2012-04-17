.class public Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;
.super Ljava/lang/Object;
.source "GOFBBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field N3:I

.field N4:I

.field private final blockSize:I

.field private final cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field firstStep:Z

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .parameter "cipher"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 33
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 34
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    .line 36
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GCTR only for 64 bit block ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    .line 41
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    .line 42
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    .line 43
    return-void
.end method

.method private bytesToint([BI)I
    .locals 3
    .parameter "in"
    .parameter "inOff"

    .prologue
    .line 178
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x100

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private intTobytes(I[BI)V
    .locals 2
    .parameter "num"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 184
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 185
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 186
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 187
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 188
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .parameter "encrypting"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    iput-boolean v7, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 68
    iput v6, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 69
    iput v6, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 71
    instance-of v3, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 72
    check-cast v2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 73
    .local v2, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 75
    .local v1, iv:[B
    array-length v3, v1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 77
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    array-length v5, v1

    sub-int/2addr v4, v5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v1

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    .line 79
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    aput-byte v6, v3, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v4, v4

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 87
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 93
    .end local v1           #iv:[B
    .end local v2           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 89
    :cond_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->reset()V

    .line 91
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, v7, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
.end method

.method public processBlock([BI[BI)I
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
    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 129
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 130
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 134
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    if-eqz v1, :cond_2

    .line 138
    iput-boolean v6, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->firstStep:Z

    .line 139
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 140
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v6}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 141
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-direct {p0, v1, v4}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->bytesToint([BI)I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 143
    :cond_2
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    const v2, 0x1010101

    add-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    .line 144
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    const v2, 0x1010104

    add-int/2addr v1, v2

    iput v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    .line 145
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N3:I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v6}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 146
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->N4:I

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    invoke-direct {p0, v1, v2, v4}, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->intTobytes(I[BI)V

    .line 148
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_3

    .line 155
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbOutV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    array-length v3, v3

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->ofbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/GOFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 174
    return-void
.end method
