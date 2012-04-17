.class public Lmyorg/bouncycastle/crypto/engines/VMPCEngine;
.super Ljava/lang/Object;
.source "VMPCEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/StreamCipher;


# instance fields
.field protected P:[B

.field protected n:B

.field protected s:B

.field protected workingIV:[B

.field protected workingKey:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    .line 17
    iput-byte v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "VMPC"

    return-object v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .parameter "forEncryption"
    .parameter "params"

    .prologue
    .line 35
    instance-of v2, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC init parameters must include an IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, p2

    .line 39
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 40
    .local v0, ivParams:Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .line 42
    .local v1, key:Lmyorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_1

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    .line 48
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    array-length v2, v2

    const/16 v3, 0x300

    if-le v2, v3, :cond_3

    .line 49
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "VMPC requires 1 to 768 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    .line 54
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v2, v3}, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    .line 55
    return-void
.end method

.method protected initKey([B[B)V
    .locals 9
    .parameter "keyBytes"
    .parameter "ivBytes"

    .prologue
    const/16 v8, 0x300

    const/16 v5, 0x100

    const/4 v7, 0x0

    .line 58
    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 59
    new-array v3, v5, [B

    iput-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 61
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    int-to-byte v4, v0

    aput-byte v4, v3, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    .local v1, m:I
    :goto_1
    if-ge v1, v8, :cond_1

    .line 65
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p1

    rem-int v5, v1, v5

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 66
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 67
    .local v2, temp:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 68
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v2           #temp:B
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_2

    .line 71
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v6, v1, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    array-length v5, p2

    rem-int v5, v1, v5

    aget-byte v5, p2, v5

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 72
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    aget-byte v2, v3, v4

    .line 73
    .restart local v2       #temp:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    and-int/lit16 v4, v1, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 74
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v2, v3, v4

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    .end local v2           #temp:B
    :cond_2
    iput-byte v7, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    .line 77
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 7
    .parameter "in"
    .parameter "inOff"
    .parameter "len"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 80
    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_0

    .line 81
    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "input buffer too short"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    :cond_0
    add-int v3, p5, p3

    array-length v4, p4

    if-le v3, v4, :cond_1

    .line 85
    new-instance v3, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v4, "output buffer too short"

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 88
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 89
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    .line 90
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xff

    aget-byte v2, v3, v4

    .line 92
    .local v2, z:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    aget-byte v1, v3, v4

    .line 93
    .local v1, temp:B
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v6, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    .line 94
    iget-object v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->P:[B

    iget-byte v4, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->s:B

    and-int/lit16 v4, v4, 0xff

    aput-byte v1, v3, v4

    .line 95
    iget-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->n:B

    .line 98
    add-int v3, v0, p5

    add-int v4, v0, p2

    aget-byte v4, p1, v4

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v1           #temp:B
    .end local v2           #z:B
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingKey:[B

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->workingIV:[B

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/crypto/engines/VMPCEngine;->initKey([B[B)V

    .line 104
    return-void
.end method
