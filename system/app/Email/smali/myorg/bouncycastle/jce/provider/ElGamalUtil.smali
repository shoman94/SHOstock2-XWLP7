.class public Lmyorg/bouncycastle/jce/provider/ElGamalUtil;
.super Ljava/lang/Object;
.source "ElGamalUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 42
    instance-of v1, p0, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 43
    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;

    .line 45
    .local v0, k:Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    .line 50
    .end local v0           #k:Lmyorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;
    :goto_0
    return-object v1

    .line 47
    :cond_0
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 48
    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 50
    .local v0, k:Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    goto :goto_0

    .line 54
    .end local v0           #k:Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t identify private key for El Gamal."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 25
    instance-of v1, p0, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    if-eqz v1, :cond_0

    move-object v0, p0

    .line 26
    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;

    .line 28
    .local v0, k:Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    .line 33
    .end local v0           #k:Lmyorg/bouncycastle/jce/interfaces/ElGamalPublicKey;
    :goto_0
    return-object v1

    .line 30
    :cond_0
    instance-of v1, p0, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 31
    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    .line 33
    .local v0, k:Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lmyorg/bouncycastle/crypto/params/ElGamalParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/crypto/params/ElGamalPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/ElGamalParameters;)V

    goto :goto_0

    .line 37
    .end local v0           #k:Ljavax/crypto/interfaces/DHPublicKey;
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t identify public key for El Gamal."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
