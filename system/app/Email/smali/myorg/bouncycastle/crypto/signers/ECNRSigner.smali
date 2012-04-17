.class public Lmyorg/bouncycastle/crypto/signers/ECNRSigner;
.super Ljava/lang/Object;
.source "ECNRSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/DSA;


# instance fields
.field private forSigning:Z

.field private key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 18
    .parameter "digest"

    .prologue
    .line 59
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-nez v15, :cond_0

    .line 60
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "not initialised for signing"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 63
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v15, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v6

    .line 64
    .local v6, n:Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    .line 66
    .local v7, nBitLength:I
    new-instance v3, Ljava/math/BigInteger;

    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-direct {v3, v15, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 67
    .local v3, e:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 69
    .local v4, eBitLength:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v8, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 71
    .local v8, privKey:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;
    if-le v4, v7, :cond_1

    .line 72
    new-instance v15, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v16, "input too large for ECNR key."

    invoke-direct/range {v15 .. v16}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 75
    :cond_1
    const/4 v9, 0x0

    .line 76
    .local v9, r:Ljava/math/BigInteger;
    const/4 v11, 0x0

    .line 83
    .local v11, s:Ljava/math/BigInteger;
    :cond_2
    new-instance v5, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {v5}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    .line 85
    .local v5, keyGen:Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;
    new-instance v15, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lmyorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lmyorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v5, v15}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 87
    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/generators/ECKeyPairGenerator;->generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v12

    .line 90
    .local v12, tempPair:Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 94
    .local v1, V:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 97
    .local v2, Vx:Ljava/math/BigInteger;
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 98
    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 101
    invoke-virtual {v8}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v14

    .line 102
    .local v14, x:Ljava/math/BigInteger;
    invoke-virtual {v12}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v15

    check-cast v15, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v15}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v13

    .line 106
    .local v13, u:Ljava/math/BigInteger;
    invoke-virtual {v9, v14}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 108
    const/4 v15, 0x2

    new-array v10, v15, [Ljava/math/BigInteger;

    .line 109
    .local v10, res:[Ljava/math/BigInteger;
    const/4 v15, 0x0

    aput-object v9, v10, v15

    .line 110
    const/4 v15, 0x1

    aput-object v11, v10, v15

    .line 112
    return-object v10
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .parameter "forSigning"
    .parameter "param"

    .prologue
    .line 30
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    .line 32
    if-eqz p1, :cond_1

    .line 33
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 34
    check-cast v0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    .line 36
    .local v0, rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    .line 37
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    .line 45
    .end local v0           #rParam:Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2
    :goto_0
    return-void

    .line 39
    .restart local p2
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->random:Ljava/security/SecureRandom;

    .line 40
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0

    .line 43
    .restart local p2
    :cond_1
    check-cast p2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .end local p2
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .parameter "digest"
    .parameter "r"
    .parameter "s"

    .prologue
    const/4 v10, 0x0

    .line 130
    iget-boolean v11, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->forSigning:Z

    if-eqz v11, :cond_0

    .line 131
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "not initialised for verifying"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 134
    :cond_0
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/signers/ECNRSigner;->key:Lmyorg/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v7, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 135
    .local v7, pubKey:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v11

    invoke-virtual {v11}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    .line 136
    .local v5, n:Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    .line 138
    .local v6, nBitLength:I
    new-instance v3, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v3, v11, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local v3, e:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 141
    .local v4, eBitLength:I
    if-le v4, v6, :cond_1

    .line 142
    new-instance v10, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v11, "input too large for ECNR key."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 146
    :cond_1
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_3

    .line 165
    :cond_2
    :goto_0
    return v10

    .line 151
    :cond_3
    sget-object v11, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-ltz v11, :cond_2

    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_2

    .line 157
    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 158
    .local v0, G:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v7}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 160
    .local v2, W:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-static {v0, p3, v2, p2}, Lmyorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 162
    .local v1, P:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 163
    .local v9, x:Ljava/math/BigInteger;
    invoke-virtual {p2, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 165
    .local v8, t:Ljava/math/BigInteger;
    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_0
.end method
