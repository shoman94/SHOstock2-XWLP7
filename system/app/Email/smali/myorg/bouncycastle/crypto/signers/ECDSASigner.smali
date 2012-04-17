.class public Lmyorg/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DSA;
.implements Lmyorg/bouncycastle/math/ec/ECConstants;


# instance fields
.field key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5
    .parameter "n"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 124
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_1

    .line 125
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    array-length v2, p2

    mul-int/lit8 v0, v2, 0x8

    .line 128
    .local v0, messageBitLength:I
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 130
    .local v1, trunc:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int v2, v0, v2

    if-lez v2, :cond_0

    .line 131
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 12
    .parameter "message"

    .prologue
    .line 50
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 51
    .local v3, n:Ljava/math/BigInteger;
    invoke-direct {p0, v3, p1}, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    .line 52
    .local v1, e:Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 53
    .local v6, r:Ljava/math/BigInteger;
    const/4 v8, 0x0

    .line 58
    .local v8, s:Ljava/math/BigInteger;
    :cond_0
    const/4 v2, 0x0

    .line 59
    .local v2, k:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 64
    .local v4, nBitLength:I
    :cond_1
    new-instance v2, Ljava/math/BigInteger;

    .end local v2           #k:Ljava/math/BigInteger;
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v4, v10}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 65
    .restart local v2       #k:Ljava/math/BigInteger;
    sget-object v10, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 67
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 70
    .local v5, p:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 72
    .local v9, x:Ljava/math/BigInteger;
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 73
    sget-object v10, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 75
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v10, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    .line 77
    .local v0, d:Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 78
    sget-object v10, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 80
    const/4 v10, 0x2

    new-array v7, v10, [Ljava/math/BigInteger;

    .line 82
    .local v7, res:[Ljava/math/BigInteger;
    const/4 v10, 0x0

    aput-object v6, v7, v10

    .line 83
    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 85
    return-object v7
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 26
    if-eqz p1, :cond_1

    .line 27
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 28
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 30
    .local v0, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 31
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 39
    .end local v0           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    return-void

    .line 33
    .restart local p2
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 34
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 37
    .restart local p2
    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 11
    .parameter "message"
    .parameter "r"
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    .line 95
    iget-object v10, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 96
    .local v4, n:Ljava/math/BigInteger;
    invoke-direct {p0, v4, p1}, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v3

    .line 99
    .local v3, e:Ljava/math/BigInteger;
    sget-object v10, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v9

    .line 104
    :cond_1
    sget-object v10, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p3, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_0

    .line 108
    invoke-virtual {p3, v4}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 110
    .local v2, c:Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 111
    .local v6, u1:Ljava/math/BigInteger;
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 113
    .local v7, u2:Ljava/math/BigInteger;
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 114
    .local v0, G:Lmyorg/bouncycastle/math/ec/ECPoint;
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/ECDSASigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v9, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 116
    .local v1, Q:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v0, v6, v1, v7}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 118
    .local v5, point:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 120
    .local v8, v:Ljava/math/BigInteger;
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0
.end method
