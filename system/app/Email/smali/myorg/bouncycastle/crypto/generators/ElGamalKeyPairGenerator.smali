.class public Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;
.super Ljava/lang/Object;
.source "ElGamalKeyPairGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    .prologue
    .line 29
    sget-object v2, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 30
    .local v2, helper:Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    .line 31
    .local v1, egp:Lmyorg/bouncycastle/crypto/params/ElGamalParameters;
    new-instance v0, Lmyorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getG()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;->getL()I

    move-result v8

    invoke-direct {v0, v5, v6, v7, v8}, Lmyorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 33
    .local v0, dhp:Lmyorg/bouncycastle/crypto/params/DHParameters;
    iget-object v5, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePrivate(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 34
    .local v3, x:Ljava/math/BigInteger;
    invoke-virtual {v2, v0, v3}, Lmyorg/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->calculatePublic(Lmyorg/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 36
    .local v4, y:Ljava/math/BigInteger;
    new-instance v5, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v6, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-direct {v6, v4, v1}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    new-instance v7, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-direct {v7, v3, v1}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    invoke-direct {v5, v6, v7}, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V

    return-object v5
.end method

.method public init(Lmyorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 25
    check-cast p1, Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/generators/ElGamalKeyPairGenerator;->param:Lmyorg/bouncycastle/crypto/params/ElGamalKeyGenerationParameters;

    .line 26
    return-void
.end method
