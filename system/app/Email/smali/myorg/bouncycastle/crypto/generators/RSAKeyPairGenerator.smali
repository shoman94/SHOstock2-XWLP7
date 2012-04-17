.class public Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 20

    .prologue
    .line 31
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v17

    .line 32
    .local v17, strength:I
    add-int/lit8 v2, v17, 0x1

    div-int/lit8 v13, v2, 0x2

    .line 33
    .local v13, pbitlength:I
    sub-int v16, v17, v13

    .line 34
    .local v16, qbitlength:I
    div-int/lit8 v11, v17, 0x3

    .line 36
    .local v11, mindiffbits:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 47
    .local v4, e:Ljava/math/BigInteger;
    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v13, v2, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 49
    .local v6, p:Ljava/math/BigInteger;
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    :cond_1
    :goto_0
    new-instance v7, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v2, v1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 72
    .local v7, q:Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lt v2, v11, :cond_1

    .line 76
    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v18, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 94
    .local v3, n:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v18

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    .line 105
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_2

    .line 106
    move-object v14, v6

    .line 107
    .local v14, phi:Ljava/math/BigInteger;
    move-object v6, v7

    .line 108
    move-object v7, v14

    .line 111
    .end local v14           #phi:Ljava/math/BigInteger;
    :cond_2
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 112
    .local v12, pSub1:Ljava/math/BigInteger;
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 113
    .local v15, qSub1:Ljava/math/BigInteger;
    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 118
    .restart local v14       #phi:Ljava/math/BigInteger;
    invoke-virtual {v4, v14}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 125
    .local v5, d:Ljava/math/BigInteger;
    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 126
    .local v8, dP:Ljava/math/BigInteger;
    invoke-virtual {v5, v15}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 127
    .local v9, dQ:Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 129
    .local v10, qInv:Ljava/math/BigInteger;
    new-instance v18, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v19, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v2 .. v10}, Lmyorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-object v18

    .line 102
    .end local v5           #d:Ljava/math/BigInteger;
    .end local v8           #dP:Ljava/math/BigInteger;
    .end local v9           #dQ:Ljava/math/BigInteger;
    .end local v10           #qInv:Ljava/math/BigInteger;
    .end local v12           #pSub1:Ljava/math/BigInteger;
    .end local v14           #phi:Ljava/math/BigInteger;
    .end local v15           #qSub1:Ljava/math/BigInteger;
    :cond_3
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 22
    check-cast p1, Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 23
    return-void
.end method
