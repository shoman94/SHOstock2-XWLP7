.class public abstract Lmyorg/bouncycastle/jce/provider/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lmyorg/bouncycastle/crypto/Digest;

.field protected encoder:Lmyorg/bouncycastle/jce/provider/DSAEncoder;

.field protected signer:Lmyorg/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;Lmyorg/bouncycastle/jce/provider/DSAEncoder;)V
    .locals 0
    .parameter "digest"
    .parameter "signer"
    .parameter "encoder"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 23
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 24
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    .line 25
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->encoder:Lmyorg/bouncycastle/jce/provider/DSAEncoder;

    .line 26
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "param"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmyorg/bouncycastle/jce/provider/DSABase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 30
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 43
    .local v1, hash:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 46
    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lmyorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 48
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->encoder:Lmyorg/bouncycastle/jce/provider/DSAEncoder;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v4, v5}, Lmyorg/bouncycastle/jce/provider/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 49
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 33
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 34
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
    .line 37
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 38
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 57
    .local v1, hash:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 62
    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->encoder:Lmyorg/bouncycastle/jce/provider/DSAEncoder;

    invoke-interface {v3, p1}, Lmyorg/bouncycastle/jce/provider/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/DSABase;->signer:Lmyorg/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lmyorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 63
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
