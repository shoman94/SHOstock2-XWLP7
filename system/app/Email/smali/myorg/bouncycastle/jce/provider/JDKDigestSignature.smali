.class public Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;
.super Ljava/security/SignatureSpi;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$noneRSA;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$RIPEMD256WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$RIPEMD128WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$RIPEMD160WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$MD5WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$MD4WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$MD2WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$SHA512WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$SHA384WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$SHA256WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$SHA224WithRSAEncryption;,
        Lmyorg/bouncycastle/jce/provider/JDKDigestSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lmyorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .parameter "objId"
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 57
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 58
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    return-void
.end method

.method protected constructor <init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 49
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 50
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 52
    return-void
.end method

.method private derEncode([B)[B
    .locals 2
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v1, :cond_0

    .line 202
    .end local p1
    :goto_0
    return-object p1

    .line 200
    .restart local p1
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 202
    .local v0, dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "o"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "param"

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
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
    .line 75
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPrivateKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 82
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 84
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 85
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 63
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPublicKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 70
    .local v0, param:Lmyorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 71
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 72
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "param"
    .parameter "value"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 171
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

    .line 104
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 106
    .local v2, hash:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 109
    :try_start_0
    invoke-direct {p0, v2}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B

    move-result-object v0

    .line 111
    .local v0, bytes:[B
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 112
    .end local v0           #bytes:[B
    :catch_0
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "key too small for signature type"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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
    .line 96
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 97
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
    .line 100
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 101
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 12
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    .line 122
    .local v3, hash:[B
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 128
    :try_start_0
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 130
    .local v5, sig:[B
    invoke-direct {p0, v3}, Lmyorg/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    .local v1, expected:[B
    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_2

    .line 136
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_4

    .line 137
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_1

    .line 167
    .end local v1           #expected:[B
    .end local v4           #i:I
    .end local v5           #sig:[B
    :cond_0
    :goto_1
    return v7

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1

    .line 136
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #expected:[B
    .restart local v4       #i:I
    .restart local v5       #sig:[B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 141
    .end local v4           #i:I
    :cond_2
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_0

    .line 143
    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    .line 144
    .local v6, sigOffset:I
    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    .line 146
    .local v2, expectedOffset:I
    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 147
    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 149
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    array-length v9, v3

    if-ge v4, v9, :cond_3

    .line 150
    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_0

    .line 149
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 157
    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_4

    .line 158
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_0

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2           #expectedOffset:I
    .end local v6           #sigOffset:I
    :cond_4
    move v7, v8

    .line 167
    goto :goto_1
.end method
