.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature;
.super Lmyorg/bouncycastle/jce/provider/DSABase;
.source "Signature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$1;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$CVCDSAEncoder;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$StdDSAEncoder;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA256;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA224;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecCVCDSA;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR512;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR384;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR256;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR224;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecNR;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSARipeMD160;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA512;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA384;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA256;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA224;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSAnone;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/Signature$ecDSA;
    }
.end annotation


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/jce/provider/DSAEncoder;)V
    .locals 0
    .parameter "digest"
    .parameter "signer"
    .parameter "encoder"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/jce/provider/DSABase;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/jce/provider/DSAEncoder;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 4
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 71
    instance-of v1, p1, Lmyorg/bouncycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 77
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 79
    if-eqz p2, :cond_1

    .line 80
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v2, v0, p2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v3, v2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 84
    :goto_0
    return-void

    .line 74
    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v3, v0}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 5
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 46
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 63
    .local v2, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 64
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 65
    return-void

    .line 49
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 51
    .local v0, bytes:[B
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 53
    instance-of v3, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_1

    .line 54
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 56
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in ECDSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
