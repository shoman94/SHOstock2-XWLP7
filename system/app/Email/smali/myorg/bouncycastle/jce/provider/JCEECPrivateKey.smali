.class public Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "JCEECPrivateKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPointEncoder;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lmyorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 79
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 81
    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1
    .parameter "algorithm"
    .parameter "params"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 138
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 139
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 6
    .parameter "algorithm"
    .parameter "params"
    .parameter "pubKey"
    .parameter "spec"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 95
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 97
    .local v0, dp:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 98
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 100
    if-nez p4, :cond_0

    .line 101
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 103
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 110
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    invoke-direct {p0, p3}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 111
    return-void

    .line 107
    :cond_0
    iput-object p4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 6
    .parameter "algorithm"
    .parameter "params"
    .parameter "pubKey"
    .parameter "spec"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 115
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 117
    .local v0, dp:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 120
    if-nez p4, :cond_0

    .line 121
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 123
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 134
    :goto_0
    invoke-direct {p0, p3}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 135
    return-void

    .line 127
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 129
    .restart local v1       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p4}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1
    .parameter "algorithm"
    .parameter "key"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 85
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 86
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 87
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 88
    iget-boolean v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 89
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 90
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;)V
    .locals 3
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 62
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 63
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 65
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 70
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v2

    invoke-static {v0, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 72
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPrivateKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 76
    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 56
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 57
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 58
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 59
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 144
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 145
    return-void
.end method

.method private getPublicKeyDetails(Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)Lmyorg/bouncycastle/asn1/DERBitString;
    .locals 3
    .parameter "pub"

    .prologue
    .line 327
    :try_start_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 330
    .local v1, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 332
    .end local v1           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_0
    return-object v2

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private populateFromPrivKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 12
    .parameter "info"

    .prologue
    .line 148
    new-instance v11, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObject;

    invoke-direct {v11, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 151
    .local v11, params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 153
    .local v10, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v10}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveByOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v8

    .line 155
    .local v8, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    if-nez v8, :cond_0

    .line 157
    invoke-static {v10}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getByOID(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v9

    .line 158
    .local v9, gParam:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 161
    .local v2, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v9}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 182
    .end local v2           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v9           #gParam:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    .end local v10           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :goto_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/asn1/DERInteger;

    .line 185
    .local v6, derD:Lmyorg/bouncycastle/asn1/DERInteger;
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 193
    .end local v6           #derD:Lmyorg/bouncycastle/asn1/DERInteger;
    :goto_1
    return-void

    .line 165
    .restart local v8       #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v10       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_0
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 167
    .restart local v2       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static {v10}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getCurveName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 171
    .end local v2           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v10           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_1
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    .line 174
    :cond_2
    new-instance v8, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v0}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 175
    .restart local v8       #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v2

    .line 177
    .restart local v2       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v0, v2, v1, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_0

    .line 187
    .end local v2           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    :cond_3
    new-instance v7, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v7, v0}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 190
    .local v7, ec:Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getKey()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    .line 191
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getPublicKey()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    goto/16 :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 339
    .local v0, enc:[B
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    .line 343
    new-instance v1, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-direct {v1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;-><init>()V

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    .line 345
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->readObject(Ljava/io/ObjectInputStream;)V

    .line 346
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
    .line 349
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 351
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 353
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->writeObject(Ljava/io/ObjectOutputStream;)V

    .line 354
    return-void
.end method


# virtual methods
.method engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 301
    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 305
    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;

    .line 307
    .local v0, other:Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;
    .locals 1
    .parameter "oid"

    .prologue
    .line 289
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    return-object v0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    .prologue
    .line 217
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v6

    .line 221
    .local v6, curveOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v9, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v6}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 237
    .end local v6           #curveOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .local v9, params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_2

    .line 238
    new-instance v8, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lmyorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v8, v2, v3, v9}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/DERBitString;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 243
    .local v8, keyStructure:Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    const-string v3, "ECGOST3410"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    new-instance v7, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 253
    .local v7, info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_2
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getDEREncoded()[B

    move-result-object v2

    return-object v2

    .line 222
    .end local v7           #info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v8           #keyStructure:Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    .end local v9           #params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_1

    .line 223
    new-instance v9, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v9, v2}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    .restart local v9       #params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 225
    .end local v9           #params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 227
    .local v1, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 231
    .local v0, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v9, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v9, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .restart local v9       #params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    goto :goto_0

    .line 240
    .end local v0           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    :cond_2
    new-instance v8, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v8, v2, v9}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lmyorg/bouncycastle/asn1/ASN1Encodable;)V

    .restart local v8       #keyStructure:Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;
    goto :goto_1

    .line 249
    :cond_3
    new-instance v7, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/sec/ECPrivateKeyStructure;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DERObject;)V

    .restart local v7       #info:Lmyorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    goto :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .locals 1
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 285
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;

    invoke-virtual {v0, p1, p2}, Lmyorg/bouncycastle/jce/provider/PKCS12BagAttributeCarrierImpl;->setBagAttribute(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 286
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, nl:Ljava/lang/String;
    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
