.class public Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;
.super Ljava/lang/Object;
.source "JDKGOST3410PrivateKey.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

.field gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 30
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v5, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v5}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 44
    new-instance v4, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 46
    .local v4, params:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DEROctetString;

    .line 47
    .local v0, derX:Lmyorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 48
    .local v3, keyEnc:[B
    array-length v5, v3

    new-array v2, v5, [B

    .line 50
    .local v2, keyBytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-eq v1, v5, :cond_0

    .line 51
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    aget-byte v5, v3, v5

    aput-byte v5, v2, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    .line 55
    invoke-static {v4}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;->fromPublicKeyAlg(Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    move-result-object v5

    iput-object v5, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 56
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;)V
    .locals 2
    .parameter "params"
    .parameter "spec"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 59
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/GOST3410PrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    .line 60
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 62
    if-nez p2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "spec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;)V
    .locals 5
    .parameter "spec"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 38
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    new-instance v1, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/GOST3410PrivateKeySpec;->getA()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;-><init>(Lmyorg/bouncycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    .line 41
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "GOST3410"

    return-object v0
.end method

.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 129
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .prologue
    .line 88
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 91
    .local v3, keyEnc:[B
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    if-nez v4, :cond_0

    .line 92
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    new-array v2, v4, [B

    .line 97
    .local v2, keyBytes:[B
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v2

    if-eq v0, v4, :cond_1

    .line 98
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, v3, v4

    aput-byte v4, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0           #i:I
    .end local v2           #keyBytes:[B
    :cond_0
    array-length v4, v3

    new-array v2, v4, [B

    .restart local v2       #keyBytes:[B
    goto :goto_0

    .line 102
    .restart local v0       #i:I
    :cond_1
    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    instance-of v4, v4, Lmyorg/bouncycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v4, :cond_2

    .line 103
    new-instance v1, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    new-instance v7, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v8, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v8}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getPublicKeyParamSetOID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v8, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    invoke-interface {v9}, Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;->getDigestParamSetOID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 113
    .local v1, info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_2
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getDEREncoded()[B

    move-result-object v4

    return-object v4

    .line 109
    .end local v1           #info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_2
    new-instance v1, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_94:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    new-instance v5, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v4, v5}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .restart local v1       #info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    goto :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->gost3410Spec:Lmyorg/bouncycastle/jce/interfaces/GOST3410Params;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 125
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKGOST3410PrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    invoke-interface {v0, p1, p2}, Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 126
    return-void
.end method
