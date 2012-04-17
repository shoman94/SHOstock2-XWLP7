.class public Lmyorg/bouncycastle/jce/provider/JDKDSASigner;
.super Ljava/security/SignatureSpi;
.source "JDKDSASigner.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$noneDSA;,
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$dsa512;,
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$dsa384;,
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$dsa256;,
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$dsa224;,
        Lmyorg/bouncycastle/jce/provider/JDKDSASigner$stdDSA;
    }
.end annotation


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;

.field private signer:Lmyorg/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;)V
    .locals 0
    .parameter "digest"
    .parameter "signer"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 42
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 43
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->signer:Lmyorg/bouncycastle/crypto/DSA;

    .line 44
    return-void
.end method

.method private derDecode([B)[Ljava/math/BigInteger;
    .locals 5
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-static {p1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 163
    .local v0, s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v0, v4}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v2, v4

    return-object v2
.end method

.method private derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3
    .parameter "r"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v1, 0x2

    new-array v0, v1, [Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, p2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    .line 158
    .local v0, rs:[Lmyorg/bouncycastle/asn1/DERInteger;
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>([Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "param"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 82
    instance-of v2, p1, Lmyorg/bouncycastle/jce/interfaces/GOST3410Key;

    if-eqz v2, :cond_1

    .line 83
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 88
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    .line 89
    new-instance v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .local v1, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    move-object v0, v1

    .line 92
    .end local v1           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 93
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->signer:Lmyorg/bouncycastle/crypto/DSA;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 94
    return-void

    .line 85
    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/DSAUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "privateKey"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->random:Ljava/security/SecureRandom;

    .line 76
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 77
    return-void
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
    .line 49
    instance-of v3, p1, Lmyorg/bouncycastle/jce/interfaces/GOST3410Key;

    if-eqz v3, :cond_0

    .line 50
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 69
    .local v2, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 70
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->signer:Lmyorg/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 71
    return-void

    .line 51
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_1

    .line 52
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 55
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 57
    .local v0, bytes:[B
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 59
    instance-of v3, p1, Ljava/security/interfaces/DSAKey;

    if-eqz v3, :cond_2

    .line 60
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/DSAUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 62
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 105
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 107
    .local v1, hash:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 110
    :try_start_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->signer:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v3, v1}, Lmyorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v2

    .line 112
    .local v2, sig:[Ljava/math/BigInteger;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->derEncode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 113
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 114
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
    .line 97
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 98
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
    .line 101
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 102
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

    .line 119
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v1, v3, [B

    .line 121
    .local v1, hash:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v1, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->derDecode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 131
    .local v2, sig:[Ljava/math/BigInteger;
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDSASigner;->signer:Lmyorg/bouncycastle/crypto/DSA;

    aget-object v4, v2, v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-interface {v3, v1, v4, v5}, Lmyorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    return v3

    .line 127
    .end local v2           #sig:[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "error decoding signature bytes."

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
