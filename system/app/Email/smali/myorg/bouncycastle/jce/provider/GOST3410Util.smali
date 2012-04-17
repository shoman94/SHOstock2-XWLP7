.class public Lmyorg/bouncycastle/jce/provider/GOST3410Util;
.super Ljava/lang/Object;
.source "GOST3410Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 37
    instance-of v2, p0, Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 38
    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;

    .line 39
    .local v0, k:Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;
    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;->getParameters()Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    move-result-object v2

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v1

    .line 41
    .local v1, p:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    return-object v2

    .line 45
    .end local v0           #k:Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;
    .end local v1           #p:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "can\'t identify GOST3410 private key."

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 23
    instance-of v2, p0, Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 24
    check-cast v0, Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;

    .line 25
    .local v0, k:Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;
    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    move-result-object v2

    invoke-interface {v2}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getPublicKeyParameters()Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    move-result-object v1

    .line 27
    .local v1, p:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    new-instance v2, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->getA()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/crypto/params/GOST3410Parameters;)V

    return-object v2

    .line 31
    .end local v0           #k:Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;
    .end local v1           #p:Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    :cond_0
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t identify GOST3410 public key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
