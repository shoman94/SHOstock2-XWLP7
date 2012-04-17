.class public Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;
.super Ljava/lang/Object;
.source "CBCBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cbcNextV:[B

.field private cbcV:[B

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private encrypting:Z


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "cipher"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 28
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 29
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 31
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 32
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 33
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 34
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 6
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
    .line 175
    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v3, p2

    array-length v4, p1

    if-le v3, v4, :cond_0

    .line 176
    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "input buffer too short"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v4, 0x0

    iget v5, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    invoke-static {p1, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v3, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 186
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v3, :cond_1

    .line 187
    add-int v3, p4, v0

    aget-byte v4, p3, v3

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 196
    .local v2, tmp:[B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 197
    iput-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    .line 199
    return v1
.end method

.method private encryptBlock([BI[BI)I
    .locals 6
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
    const/4 v5, 0x0

    .line 140
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v2, p2

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 141
    new-instance v2, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v3, "input buffer too short"

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v0, v2, :cond_1

    .line 148
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v0

    add-int v4, p2, v0

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {v2, v3, v5, p3, p4}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    .line 156
    .local v1, length:I
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v3, v3

    invoke-static {p3, p4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CBC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "encrypting"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 56
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 58
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1

    move-object v1, p2

    .line 59
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 60
    .local v1, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 62
    .local v0, iv:[B
    array-length v2, v0

    iget v3, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-eq v2, v3, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "initialisation vector must be the same length as block size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 71
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 77
    .end local v0           #iv:[B
    .end local v1           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    .line 75
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
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
    .line 112
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lmyorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 123
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 124
    return-void
.end method
