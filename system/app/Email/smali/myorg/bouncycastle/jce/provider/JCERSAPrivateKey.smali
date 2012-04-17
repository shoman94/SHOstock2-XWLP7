.class public Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;
.super Ljava/lang/Object;
.source "JCERSAPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field private static ZERO:Ljava/math/BigInteger; = null

.field static final serialVersionUID:J = 0x46eb09c007cf411cL


# instance fields
.field private attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

.field protected modulus:Ljava/math/BigInteger;

.field protected privateExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 46
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 47
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 1
    .parameter "spec"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 41
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 42
    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 43
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 36
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 37
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 38
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    .line 108
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 110
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    .line 113
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 121
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v3, :cond_1

    move v1, v2

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    if-eq p1, p0, :cond_0

    move-object v0, p1

    .line 84
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 86
    .local v0, key:Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "RSA"

    return-object v0
.end method

.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 11

    .prologue
    .line 67
    new-instance v9, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v10, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/DERNull;-><init>()V

    invoke-direct {v10, v0, v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v5, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v6, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v7, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    sget-object v8, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lmyorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-direct {v9, v10, v0}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 72
    .local v9, info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getDEREncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 95
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 96
    return-void
.end method
