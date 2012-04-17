.class public Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;
.super Ljava/lang/Object;
.source "SICBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private IV:[B

.field private final blockSize:I

.field private final cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

.field private counter:[B

.field private counterOut:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 29
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 30
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 31
    iget v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    .line 32
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/SIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lmyorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 46
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 47
    .local v1, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 48
    .local v0, iv:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    .line 51
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 55
    return-void

    .line 53
    .end local v0           #iv:[B
    .end local v1           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SIC mode requires ParametersWithIV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
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
    const/4 v6, 0x0

    .line 67
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v3, v4, v6, v5, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 72
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 73
    add-int v3, p4, v1

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte v4, v4, v1

    add-int v5, p2, v1

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v3

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x1

    .line 78
    .local v0, carry:I
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 79
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v2, v3, v0

    .line 81
    .local v2, x:I
    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 87
    :goto_2
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v1

    .line 78
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 90
    .end local v2           #x:I
    :cond_2
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    return v3
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 96
    return-void
.end method
