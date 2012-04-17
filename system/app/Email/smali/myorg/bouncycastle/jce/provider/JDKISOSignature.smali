.class public Lmyorg/bouncycastle/jce/provider/JDKISOSignature;
.super Ljava/security/SignatureSpi;
.source "JDKISOSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKISOSignature$RIPEMD160WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKISOSignature$MD5WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKISOSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 26
    new-instance v0, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;Z)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    .line 27
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "param"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 38
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 39
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 30
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 32
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 33
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->generateSignature()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    .local v1, sig:[B
    return-object v1

    .line 54
    .end local v1           #sig:[B
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update(B)V

    .line 43
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->update([BII)V

    .line 47
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 2
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKISOSignature;->signer:Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;

    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/crypto/signers/ISO9796d2Signer;->verifySignature([B)Z

    move-result v0

    .line 62
    .local v0, yes:Z
    return v0
.end method
