.class public Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lmyorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 21
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    .line 27
    return-void
.end method

.method private F([B[BI[B[BI)V
    .locals 8
    .parameter "P"
    .parameter "S"
    .parameter "c"
    .parameter "iBuf"
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v7, 0x0

    .line 30
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v4}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 31
    .local v3, state:[B
    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 33
    .local v2, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 35
    if-eqz p2, :cond_0

    .line 36
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 39
    :cond_0
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    array-length v5, p4

    invoke-interface {v4, p4, v7, v5}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 41
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 43
    array-length v4, v3

    invoke-static {v3, v7, p5, p6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    if-nez p3, :cond_1

    .line 46
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iteration count must be at least 1."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_1
    const/4 v0, 0x1

    .local v0, count:I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 50
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lmyorg/bouncycastle/crypto/Mac;->init(Lmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 51
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    array-length v5, v3

    invoke-interface {v4, v3, v7, v5}, Lmyorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 52
    iget-object v4, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lmyorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 54
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_2

    .line 55
    add-int v4, p6, v1

    aget-byte v5, p5, v4

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p5, v4

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v1           #j:I
    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 10
    .parameter "dkLen"

    .prologue
    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lmyorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v7

    .line 69
    .local v7, hLen:I
    add-int v0, p1, v7

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v7

    .line 70
    .local v9, l:I
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 71
    .local v4, iBuf:[B
    mul-int v0, v9, v7

    new-array v5, v0, [B

    .line 73
    .local v5, out:[B
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    if-gt v8, v9, :cond_0

    .line 74
    invoke-direct {p0, v4, v8}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    .line 76
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    iget-object v2, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget v3, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    add-int/lit8 v0, v8, -0x1

    mul-int v6, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    .line 73
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v5
.end method

.method private intToOctet([BI)V
    .locals 2
    .parameter "buf"
    .parameter "i"

    .prologue
    .line 61
    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 62
    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 63
    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 64
    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 65
    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1
    .parameter "keySize"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 3
    .parameter "keySize"

    .prologue
    .line 90
    div-int/lit8 p1, p1, 0x8

    .line 92
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 94
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    .line 106
    div-int/lit8 p1, p1, 0x8

    .line 107
    div-int/lit8 p2, p2, 0x8

    .line 109
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 111
    .local v0, dKey:[B
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
