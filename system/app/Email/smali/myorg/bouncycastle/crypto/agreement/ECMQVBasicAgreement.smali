.class public Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;
.super Ljava/lang/Object;
.source "ECMQVBasicAgreement.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateMqvAgreement(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 16
    .parameter "parameters"
    .parameter "d1U"
    .parameter "d2U"
    .parameter "Q2U"
    .parameter "Q1V"
    .parameter "Q2V"

    .prologue
    .line 41
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 42
    .local v4, n:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    div-int/lit8 v2, v13, 0x2

    .line 43
    .local v2, e:I
    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 47
    .local v6, powE:Ljava/math/BigInteger;
    if-nez p4, :cond_0

    .line 48
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Lmyorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 53
    .local v7, q:Lmyorg/bouncycastle/math/ec/ECPoint;
    :goto_0
    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 54
    .local v9, x:Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 55
    .local v10, xBar:Ljava/math/BigInteger;
    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    .local v0, Q2UBar:Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 58
    .local v8, s:Ljava/math/BigInteger;
    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    .line 59
    .local v11, xPrime:Ljava/math/BigInteger;
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 60
    .local v12, xPrimeBar:Ljava/math/BigInteger;
    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 62
    .local v1, Q2VBar:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 65
    .local v3, hs:Ljava/math/BigInteger;
    invoke-virtual/range {p5 .. p5}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-static {v13, v14, v15, v3}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 68
    .local v5, p:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 69
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "Infinity is not a valid agreement value for MQV"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 50
    .end local v0           #Q2UBar:Ljava/math/BigInteger;
    .end local v1           #Q2VBar:Ljava/math/BigInteger;
    .end local v3           #hs:Ljava/math/BigInteger;
    .end local v5           #p:Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v7           #q:Lmyorg/bouncycastle/math/ec/ECPoint;
    .end local v8           #s:Ljava/math/BigInteger;
    .end local v9           #x:Ljava/math/BigInteger;
    .end local v10           #xBar:Ljava/math/BigInteger;
    .end local v11           #xPrime:Ljava/math/BigInteger;
    .end local v12           #xPrimeBar:Ljava/math/BigInteger;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .restart local v7       #q:Lmyorg/bouncycastle/math/ec/ECPoint;
    goto :goto_0

    .line 72
    .restart local v0       #Q2UBar:Ljava/math/BigInteger;
    .restart local v1       #Q2VBar:Ljava/math/BigInteger;
    .restart local v3       #hs:Ljava/math/BigInteger;
    .restart local v5       #p:Lmyorg/bouncycastle/math/ec/ECPoint;
    .restart local v8       #s:Ljava/math/BigInteger;
    .restart local v9       #x:Ljava/math/BigInteger;
    .restart local v10       #xBar:Ljava/math/BigInteger;
    .restart local v11       #xPrime:Ljava/math/BigInteger;
    .restart local v12       #xPrimeBar:Ljava/math/BigInteger;
    :cond_1
    return-object v5
.end method


# virtual methods
.method public calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 9
    .parameter "pubKey"

    .prologue
    .line 25
    move-object v8, p1

    check-cast v8, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;

    .line 27
    .local v8, pubParams:Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getStaticPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v2

    .line 29
    .local v2, staticPrivateKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPrivateKey()Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v3

    iget-object v0, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;->getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->getStaticPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v5

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/MQVPublicParameters;->getEphemeralPublicKey()Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->calculateMqvAgreement(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 34
    .local v7, agreement:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 21
    check-cast p1, Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/ECMQVBasicAgreement;->privParams:Lmyorg/bouncycastle/crypto/params/MQVPrivateParameters;

    .line 22
    return-void
.end method
