.class public Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.super Ljava/security/SignatureSpi;
.source "JDKGOST3410Signer.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer$ecgost3410;,
        Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer$gost3410;
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
    .line 33
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 34
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 35
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    .line 36
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "param"

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 74
    instance-of v1, p1, Lmyorg/bouncycastle/jce/interfaces/ECKey;

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 80
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 82
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    new-instance v2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v0, v3}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v4, v2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 87
    :goto_1
    return-void

    .line 77
    .end local v0           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/GOST3410Util;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .restart local v0       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v1, v4, v0}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1
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
    .line 67
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->random:Ljava/security/SecureRandom;

    .line 68
    invoke-virtual {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->engineInitSign(Ljava/security/PrivateKey;)V

    .line 69
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
    .line 41
    instance-of v3, p1, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_0

    .line 42
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 61
    .local v2, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 62
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lmyorg/bouncycastle/crypto/DSA;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 63
    return-void

    .line 43
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v3, p1, Lmyorg/bouncycastle/jce/interfaces/GOST3410Key;

    if-eqz v3, :cond_1

    .line 44
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/GOST3410Util;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 47
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_1
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 49
    .local v0, bytes:[B
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;

    move-result-object p1

    .line 51
    instance-of v3, p1, Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;

    if-eqz v3, :cond_2

    .line 52
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .restart local v2       #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    .line 54
    .end local v2           #param:Lmyorg/bouncycastle/crypto/CipherParameters;
    :cond_2
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "can\'t recognise key type in DSA based signer"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 57
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
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 98
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v1, v6, [B

    .line 100
    .local v1, hash:[B
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v1, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 103
    const/16 v6, 0x40

    :try_start_0
    new-array v5, v6, [B

    .line 104
    .local v5, sigBytes:[B
    iget-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    invoke-interface {v6, v1}, Lmyorg/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v4

    .line 105
    .local v4, sig:[Ljava/math/BigInteger;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 106
    .local v2, r:[B
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 108
    .local v3, s:[B
    const/4 v6, 0x0

    aget-byte v6, v3, v6

    if-eqz v6, :cond_0

    .line 109
    const/4 v6, 0x0

    array-length v7, v3

    rsub-int/lit8 v7, v7, 0x20

    array-length v8, v3

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    :goto_0
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eqz v6, :cond_1

    .line 115
    const/4 v6, 0x0

    array-length v7, v2

    rsub-int/lit8 v7, v7, 0x40

    array-length v8, v2

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    :goto_1
    return-object v5

    .line 111
    :cond_0
    const/4 v6, 0x1

    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    rsub-int/lit8 v7, v7, 0x20

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v2           #r:[B
    .end local v3           #s:[B
    .end local v4           #sig:[Ljava/math/BigInteger;
    .end local v5           #sigBytes:[B
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #r:[B
    .restart local v3       #s:[B
    .restart local v4       #sig:[Ljava/math/BigInteger;
    .restart local v5       #sigBytes:[B
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    rsub-int/lit8 v7, v7, 0x40

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v2, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
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
    .line 90
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 91
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
    .line 94
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 95
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 10
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v1, v5, [B

    .line 129
    .local v1, hash:[B
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v8}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 134
    const/16 v5, 0x20

    :try_start_0
    new-array v2, v5, [B

    .line 135
    .local v2, r:[B
    const/16 v5, 0x20

    new-array v3, v5, [B

    .line 137
    .local v3, s:[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/16 v5, 0x20

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {p1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/math/BigInteger;

    .line 142
    .local v4, sig:[Ljava/math/BigInteger;
    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    .line 143
    const/4 v5, 0x1

    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;->signer:Lmyorg/bouncycastle/crypto/DSA;

    aget-object v6, v4, v8

    aget-object v7, v4, v9

    invoke-interface {v5, v1, v6, v7}, Lmyorg/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v5

    return v5

    .line 144
    .end local v2           #r:[B
    .end local v3           #s:[B
    .end local v4           #sig:[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "error decoding signature bytes."

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
