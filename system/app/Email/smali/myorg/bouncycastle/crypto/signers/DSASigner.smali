.class public Lmyorg/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DSA;


# instance fields
.field key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5
    .parameter "n"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 105
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 111
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 109
    .local v0, trunc:[B
    array-length v1, v0

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .parameter "message"

    .prologue
    .line 48
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 49
    .local v2, params:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lmyorg/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    .line 51
    .local v1, m:Ljava/math/BigInteger;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 54
    .local v3, qBitLength:I
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v3, v7}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 55
    .local v0, k:Ljava/math/BigInteger;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_0

    .line 57
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 59
    .local v4, r:Ljava/math/BigInteger;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v7, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 62
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    .local v6, s:Ljava/math/BigInteger;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/math/BigInteger;

    .line 66
    .local v5, res:[Ljava/math/BigInteger;
    const/4 v7, 0x0

    aput-object v4, v5, v7

    .line 67
    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 69
    return-object v5
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 25
    if-eqz p1, :cond_1

    .line 26
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 27
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 29
    .local v0, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 30
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    .line 38
    .end local v0           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    return-void

    .line 32
    .restart local p2
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    .line 33
    check-cast p2, Lmyorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_0

    .line 36
    .restart local p2
    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 10
    .parameter "message"
    .parameter "r"
    .parameter "s"

    .prologue
    const/4 v7, 0x0

    .line 78
    iget-object v8, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v1

    .line 79
    .local v1, params:Lmyorg/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lmyorg/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    .local v0, m:Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 82
    .local v6, zero:Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v7

    .line 86
    :cond_1
    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gez v8, :cond_0

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-lez v8, :cond_0

    .line 90
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 92
    .local v5, w:Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, u1:Ljava/math/BigInteger;
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 95
    .local v3, u2:Ljava/math/BigInteger;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 96
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/DSASigner;->key:Lmyorg/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v7, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 100
    .local v4, v:Ljava/math/BigInteger;
    invoke-virtual {v4, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0
.end method
