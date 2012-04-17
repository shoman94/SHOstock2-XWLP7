.class Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;
.super Ljava/lang/Object;
.source "CFBBlockCipherMac.java"


# instance fields
.field private IV:[B

.field private blockSize:I

.field private cfbOutV:[B

.field private cfbV:[B

.field private cipher:Lmyorg/bouncycastle/crypto/BlockCipher;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .parameter "cipher"
    .parameter "bitBlockSize"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 30
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    .line 31
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    .line 33
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    .line 34
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    .line 35
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    .line 36
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    return v0
.end method

.method getMacBlock([B)V
    .locals 3
    .parameter "mac"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    invoke-interface {v0, v1, v2, p1, v2}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 139
    return-void
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    instance-of v2, p1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 49
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 50
    .local v1, ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 52
    .local v0, iv:[B
    array-length v2, v0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 53
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v3, v3

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 60
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 66
    .end local v0           #iv:[B
    .end local v1           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :goto_1
    return-void

    .line 55
    .restart local v0       #iv:[B
    .restart local v1       #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v3, v3

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 62
    .end local v0           #iv:[B
    .end local v1           #ivParam:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->reset()V

    .line 64
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2, v6, p1}, Lmyorg/bouncycastle/crypto/BlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

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
    const/4 v6, 0x0

    .line 102
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p2

    array-length v2, p1

    if-le v1, v2, :cond_0

    .line 103
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    add-int/2addr v1, p4

    array-length v2, p3

    if-le v1, v2, :cond_1

    .line 107
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    invoke-interface {v1, v2, v6, v3, v6}, Lmyorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_2

    .line 116
    add-int v1, p4, v0

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbOutV:[B

    aget-byte v2, v2, v0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    array-length v4, v4

    iget v5, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    sub-int/2addr v4, v5

    invoke-static {v1, v2, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    array-length v2, v2

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    sub-int/2addr v2, v3

    iget v3, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    invoke-static {p3, p4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->blockSize:I

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cfbV:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->IV:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/MacCFBBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/BlockCipher;->reset()V

    .line 135
    return-void
.end method
