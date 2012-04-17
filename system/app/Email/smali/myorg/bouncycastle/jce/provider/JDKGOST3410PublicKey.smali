.class public Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;
.super Ljava/lang/Object;
.source "JDKGOST3410PublicKey.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/interfaces/GOST3410PublicKey;


# instance fields
.field private gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v5, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 52
    .local v5, params:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    :try_start_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    .line 54
    .local v0, derY:Lmyorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v4

    .line 55
    .local v4, keyEnc:[B
    array-length v6, v4

    new-array v3, v6, [B

    .line 57
    .local v3, keyBytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-eq v2, v6, :cond_0

    .line 58
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    aget-byte v6, v4, v6

    aput-byte v6, v3, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-static {v5}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->fromPublicKeyAlg(Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v6

    iput-object v6, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 68
    return-void

    .line 63
    .end local v0           #derY:Lmyorg/bouncycastle/asn1/DEROctetString;
    .end local v2           #i:I
    .end local v3           #keyBytes:[B
    .end local v4           #keyEnc:[B
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "invalid info structure in GOST3410 public key"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;)V
    .locals 1
    .parameter "params"
    .parameter "spec"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/GOST3410PublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    .line 38
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 39
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;)V
    .locals 5
    .parameter "spec"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeySpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 138
    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 139
    check-cast v0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;

    .line 141
    .local v0, other:Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    iget-object v3, v0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 144
    .end local v0           #other:Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;
    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 11

    .prologue
    .line 80
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 83
    .local v3, keyEnc:[B
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    if-nez v4, :cond_0

    .line 84
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [B

    .line 89
    .local v2, keyBytes:[B
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_1

    .line 90
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, v3, v4

    aput-byte v4, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    .end local v0           #i:I
    .end local v2           #keyBytes:[B
    :cond_0
    array-length v4, v3

    new-array v2, v4, [B

    .restart local v2       #keyBytes:[B
    goto :goto_0

    .line 94
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    instance-of v4, v4, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v4, :cond_3

    .line 95
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v4}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getEncryptionParamSetOID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 96
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v7, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v8, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v8}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v8, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v9}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v9, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v10, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v10}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getEncryptionParamSetOID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8, v9}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v5}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 116
    .local v1, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getDEREncoded()[B

    move-result-object v4

    return-object v4

    .line 104
    .end local v1           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v7, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v8, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v8}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v8, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v9}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v5}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .restart local v1       #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    goto :goto_2

    .line 112
    .end local v1           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :cond_3
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v5}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .restart local v1       #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    goto :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->y:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, nl:Ljava/lang/String;
    const-string v2, "GOST3410 Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v2, "            y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
