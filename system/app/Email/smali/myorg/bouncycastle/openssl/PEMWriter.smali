.class public Lmyorg/bouncycastle/openssl/PEMWriter;
.super Ljava/io/BufferedWriter;
.source "PEMWriter.java"


# instance fields
.field private provider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 50
    const-string v0, "myBC"

    invoke-direct {p0, p1, v0}, Lmyorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .parameter "out"
    .parameter "provider"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    iput-object p2, p0, Lmyorg/bouncycastle/openssl/PEMWriter;->provider:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private writeEncoded([B)V
    .locals 5
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    const/16 v3, 0x40

    new-array v0, v3, [C

    .line 70
    .local v0, buf:[C
    invoke-static {p1}, Lmyorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 72
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, index:I
    :goto_1
    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 76
    add-int v3, v1, v2

    array-length v4, p1

    if-lt v3, v4, :cond_1

    .line 82
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lmyorg/bouncycastle/openssl/PEMWriter;->write([CII)V

    .line 83
    invoke-virtual {p0}, Lmyorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 72
    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_0

    .line 79
    :cond_1
    add-int v3, v1, v2

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v2           #index:I
    :cond_2
    return-void
.end method

.method private writeFooter(Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----END "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lmyorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 252
    return-void
.end method

.method private writeHeader(Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lmyorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 247
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .locals 11
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    instance-of v8, p1, Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_0

    .line 92
    const-string v4, "CERTIFICATE"

    .line 94
    .local v4, type:Ljava/lang/String;
    :try_start_0
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    .local v1, encoding:[B
    :goto_0
    invoke-direct {p0, v4}, Lmyorg/bouncycastle/openssl/PEMWriter;->writeHeader(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/openssl/PEMWriter;->writeEncoded([B)V

    .line 160
    invoke-direct {p0, v4}, Lmyorg/bouncycastle/openssl/PEMWriter;->writeFooter(Ljava/lang/String;)V

    .line 161
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    :goto_1
    return-void

    .line 95
    .restart local v4       #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 98
    .end local v0           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_0
    instance-of v8, p1, Ljava/security/cert/X509CRL;

    if-eqz v8, :cond_1

    .line 99
    const-string v4, "X509 CRL"

    .line 101
    .restart local v4       #type:Ljava/lang/String;
    :try_start_1
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/cert/CRLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .restart local v1       #encoding:[B
    goto :goto_0

    .line 102
    .end local v1           #encoding:[B
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Ljava/security/cert/CRLException;
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot encode object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/security/cert/CRLException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 105
    .end local v0           #e:Ljava/security/cert/CRLException;
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_1
    instance-of v8, p1, Ljava/security/KeyPair;

    if-eqz v8, :cond_2

    .line 106
    check-cast p1, Ljava/security/KeyPair;

    .end local p1
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-virtual {p0, v8}, Lmyorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 108
    .restart local p1
    :cond_2
    instance-of v8, p1, Ljava/security/PrivateKey;

    if-eqz v8, :cond_6

    .line 109
    new-instance v2, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-object v8, p1

    check-cast v8, Ljava/security/Key;

    invoke-interface {v8}, Ljava/security/Key;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v8}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 112
    .local v2, info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    instance-of v8, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v8, :cond_3

    .line 113
    const-string v4, "RSA PRIVATE KEY"

    .line 115
    .restart local v4       #type:Ljava/lang/String;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 116
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_4

    .line 117
    const-string v4, "DSA PRIVATE KEY"

    .line 119
    .restart local v4       #type:Ljava/lang/String;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    invoke-static {v8}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v3

    .line 120
    .local v3, p:Lmyorg/bouncycastle/asn1/x509/DSAParameter;
    new-instance v5, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 122
    .local v5, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 123
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 124
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 125
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 127
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 128
    .local v6, x:Ljava/math/BigInteger;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 130
    .local v7, y:Ljava/math/BigInteger;
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v8, v7}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 131
    new-instance v8, Lmyorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v8, v6}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v5, v8}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 133
    new-instance v8, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v5}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v1

    .line 134
    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .end local v1           #encoding:[B
    .end local v3           #p:Lmyorg/bouncycastle/asn1/x509/DSAParameter;
    .end local v4           #type:Ljava/lang/String;
    .end local v5           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6           #x:Ljava/math/BigInteger;
    .end local v7           #y:Ljava/math/BigInteger;
    .restart local p1
    :cond_4
    check-cast p1, Ljava/security/PrivateKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ECDSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 135
    const-string v4, "EC PRIVATE KEY"

    .line 137
    .restart local v4       #type:Ljava/lang/String;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 139
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Cannot identify private key"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    .end local v2           #info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .restart local p1
    :cond_6
    instance-of v8, p1, Ljava/security/PublicKey;

    if-eqz v8, :cond_7

    .line 142
    const-string v4, "PUBLIC KEY"

    .line 144
    .restart local v4       #type:Ljava/lang/String;
    check-cast p1, Ljava/security/PublicKey;

    .end local p1
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 145
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_7
    instance-of v8, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v8, :cond_8

    .line 146
    const-string v4, "ATTRIBUTE CERTIFICATE"

    .line 147
    .restart local v4       #type:Ljava/lang/String;
    check-cast p1, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;

    .end local p1
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 148
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_8
    instance-of v8, p1, Lmyorg/bouncycastle/jce/PKCS10CertificationRequest;

    if-eqz v8, :cond_9

    .line 149
    const-string v4, "CERTIFICATE REQUEST"

    .line 150
    .restart local v4       #type:Ljava/lang/String;
    check-cast p1, Lmyorg/bouncycastle/jce/PKCS10CertificationRequest;

    .end local p1
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 151
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_9
    instance-of v8, p1, Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    if-eqz v8, :cond_a

    .line 152
    const-string v4, "PKCS7"

    .line 153
    .restart local v4       #type:Ljava/lang/String;
    check-cast p1, Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    .end local p1
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v1

    .restart local v1       #encoding:[B
    goto/16 :goto_0

    .line 155
    .end local v1           #encoding:[B
    .end local v4           #type:Ljava/lang/String;
    .restart local p1
    :cond_a
    new-instance v8, Ljava/io/IOException;

    const-string v9, "unknown object passed - can\'t encode."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
