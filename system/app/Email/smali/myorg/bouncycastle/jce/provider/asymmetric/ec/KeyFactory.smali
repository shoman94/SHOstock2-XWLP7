.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;
.source "KeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECMQV;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDHC;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDH;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECGOST3410;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$ECDSA;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory$EC;
    }
.end annotation


# instance fields
.field algorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithm"

    .prologue
    .line 26
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 27
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 5
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 77
    instance-of v2, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_0

    .line 79
    :try_start_0
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 82
    .local v1, key:Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1           #key:Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_0
    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_1

    .line 87
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;)V

    goto :goto_0

    .line 88
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECPrivateKeySpec;

    if-eqz v2, :cond_2

    .line 89
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPrivateKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V

    goto :goto_0

    .line 92
    .restart local p1
    :cond_2
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 5
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 96
    instance-of v2, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v2, :cond_0

    .line 98
    :try_start_0
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    .line 101
    .local v1, key:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #key:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    :goto_0
    return-object v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_0
    instance-of v2, p1, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;

    if-eqz v2, :cond_1

    .line 106
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;)V

    goto :goto_0

    .line 107
    .restart local p1
    :cond_1
    instance-of v2, p1, Ljava/security/spec/ECPublicKeySpec;

    if-eqz v2, :cond_2

    .line 108
    new-instance v2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyFactory;->algorithm:Ljava/lang/String;

    check-cast p1, Ljava/security/spec/ECPublicKeySpec;

    .end local p1
    invoke-direct {v2, v3, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V

    goto :goto_0

    .line 111
    .restart local p1
    :cond_2
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySpec type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 41
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS#8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 67
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 46
    :cond_1
    const-class v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_3

    .line 48
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 49
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 54
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_0

    .line 58
    :cond_3
    const-class v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_5

    .line 60
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto :goto_0

    .line 65
    :cond_4
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    .line 67
    new-instance v0, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v3, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    goto/16 :goto_0

    .line 73
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented yet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 31
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    .line 34
    :goto_0
    return-object v0

    .line 33
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    goto :goto_0

    .line 37
    .restart local p1
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
