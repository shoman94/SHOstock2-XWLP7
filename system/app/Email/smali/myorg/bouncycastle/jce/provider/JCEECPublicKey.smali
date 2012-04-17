.class public Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source "JCEECPublicKey.java"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPointEncoder;
.implements Lmyorg/bouncycastle/jce/interfaces/ECPublicKey;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

.field private q:Lmyorg/bouncycastle/math/ec/ECPoint;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 61
    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 62
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;)V
    .locals 1
    .parameter "algorithm"
    .parameter "params"

    .prologue
    .line 122
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Ljava/security/spec/ECParameterSpec;)V
    .locals 4
    .parameter "algorithm"
    .parameter "params"
    .parameter "spec"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 89
    .local v0, dp:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 92
    if-nez p3, :cond_0

    .line 93
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 95
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 99
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    .line 97
    :cond_0
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 4
    .parameter "algorithm"
    .parameter "params"
    .parameter "spec"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v2, "EC"

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 105
    .local v0, dp:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 106
    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 108
    if-nez p3, :cond_0

    .line 109
    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 111
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-direct {p0, v1, v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 117
    :goto_0
    return-void

    .line 113
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :cond_0
    invoke-virtual {p3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {p3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 115
    .restart local v1       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-static {v1, p3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 1
    .parameter "algorithm"
    .parameter "key"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 53
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 54
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 55
    iget-boolean v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    .line 56
    iget-object v0, p2, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;)V
    .locals 7
    .parameter "algorithm"
    .parameter "spec"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v3, "EC"

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 67
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 69
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 71
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 72
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v0, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 74
    .local v1, ellipticCurve:Ljava/security/spec/EllipticCurve;
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/spec/ECPublicKeySpec;->getParams()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v3

    invoke-static {v1, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 84
    .end local v0           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v1           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    if-nez v3, :cond_1

    .line 77
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    .line 79
    .local v2, s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 82
    .end local v2           #s:Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 134
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 135
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 136
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 137
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "EC"

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 141
    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/crypto/params/ECDomainParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 4
    .parameter "ellipticCurve"
    .parameter "dp"

    .prologue
    .line 129
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .locals 7
    .parameter "encKey"
    .parameter "offSet"
    .parameter "bI"

    .prologue
    const/16 v6, 0x20

    .line 312
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 313
    .local v2, val:[B
    array-length v3, v2

    if-ge v3, v6, :cond_0

    .line 314
    new-array v1, v6, [B

    .line 315
    .local v1, tmp:[B
    const/4 v3, 0x0

    array-length v4, v1

    array-length v5, v2

    sub-int/2addr v4, v5

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    .end local v1           #tmp:[B
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eq v0, v6, :cond_1

    .line 319
    add-int v3, p2, v0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, v2, v4

    aput-byte v4, p1, v3

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_1
    return-void
.end method

.method private populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 22
    .parameter "info"

    .prologue
    .line 144
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    sget-object v2, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v7

    .line 147
    .local v7, bits:Lmyorg/bouncycastle/asn1/DERBitString;
    const-string v1, "ECGOST3410"

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 150
    :try_start_0
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v14

    check-cast v14, Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v14, key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v14}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 156
    .local v15, keyEnc:[B
    const/16 v1, 0x20

    new-array v0, v1, [B

    move-object/from16 v20, v0

    .line 157
    .local v20, x:[B
    const/16 v1, 0x20

    new-array v0, v1, [B

    move-object/from16 v21, v0

    .line 159
    .local v21, y:[B
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move-object/from16 v0, v20

    array-length v1, v0

    if-eq v13, v1, :cond_0

    .line 160
    rsub-int/lit8 v1, v13, 0x1f

    aget-byte v1, v15, v1

    aput-byte v1, v20, v13

    .line 159
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 151
    .end local v13           #i:I
    .end local v14           #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v15           #keyEnc:[B
    .end local v20           #x:[B
    .end local v21           #y:[B
    :catch_0
    move-exception v12

    .line 152
    .local v12, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error recovering public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    .end local v12           #ex:Ljava/io/IOException;
    .restart local v13       #i:I
    .restart local v14       #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .restart local v15       #keyEnc:[B
    .restart local v20       #x:[B
    .restart local v21       #y:[B
    :cond_0
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v1, v0

    if-eq v13, v1, :cond_1

    .line 164
    rsub-int/lit8 v1, v13, 0x3f

    aget-byte v1, v15, v1

    aput-byte v1, v21, v13

    .line 163
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 167
    :cond_1
    new-instance v2, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/jce/ECGOST3410NamedCurveTable;->getParameterSpec(Ljava/lang/String;)Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    move-result-object v19

    .line 174
    .local v19, spec:Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    if-eqz v19, :cond_2

    .line 175
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 176
    .local v8, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 178
    .local v3, ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v2, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v4, 0x0

    invoke-virtual {v8, v1, v2, v4}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 180
    new-instance v1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->getPublicKeyParamSet()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 238
    .end local v3           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v8           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v13           #i:I
    .end local v15           #keyEnc:[B
    .end local v19           #spec:Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;
    .end local v20           #x:[B
    .end local v21           #y:[B
    :cond_2
    :goto_2
    return-void

    .line 186
    .end local v7           #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .end local v14           #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_3
    new-instance v17, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/DERObject;

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    .line 191
    .local v17, params:Lmyorg/bouncycastle/asn1/x9/X962Parameters;
    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isNamedCurve()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 192
    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v16

    check-cast v16, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 193
    .local v16, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveByOid(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v11

    .line 195
    .local v11, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 196
    .restart local v8       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 198
    .restart local v3       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-static/range {v16 .. v16}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getCurveName(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 215
    .end local v3           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v11           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v16           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lmyorg/bouncycastle/asn1/DERBitString;

    move-result-object v7

    .line 216
    .restart local v7       #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v9

    .line 217
    .local v9, data:[B
    new-instance v14, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v14, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 222
    .restart local v14       #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v1, 0x0

    aget-byte v1, v9, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    aget-byte v1, v9, v1

    array-length v2, v9

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v1, 0x2

    aget-byte v1, v9, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 224
    :cond_4
    new-instance v1, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;-><init>()V

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/x9/X9IntegerConverter;->getByteLength(Lmyorg/bouncycastle/math/ec/ECCurve;)I

    move-result v18

    .line 226
    .local v18, qLength:I
    array-length v1, v9

    add-int/lit8 v1, v1, -0x3

    move/from16 v0, v18

    if-lt v0, v1, :cond_5

    .line 228
    :try_start_1
    invoke-static {v9}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v14

    .end local v14           #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    check-cast v14, Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    .end local v18           #qLength:I
    .restart local v14       #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_5
    new-instance v10, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-direct {v10, v8, v14}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 236
    .local v10, derQ:Lmyorg/bouncycastle/asn1/x9/X9ECPoint;
    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->getPoint()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    goto/16 :goto_2

    .line 201
    .end local v7           #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .end local v8           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v9           #data:[B
    .end local v10           #derQ:Lmyorg/bouncycastle/asn1/x9/X9ECPoint;
    .end local v14           #key:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->isImplicitlyCA()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 202
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    .line 203
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/ProviderUtil;->getEcImplicitlyCa()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .restart local v8       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    goto :goto_3

    .line 205
    .end local v8           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    :cond_7
    new-instance v11, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getParameters()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, v1}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 207
    .restart local v11       #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    .line 208
    .restart local v8       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getSeed()[B

    move-result-object v1

    invoke-static {v8, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v3

    .line 210
    .restart local v3       #ellipticCurve:Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/security/spec/ECParameterSpec;

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;->getH()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_3

    .line 229
    .end local v3           #ellipticCurve:Ljava/security/spec/EllipticCurve;
    .end local v11           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .restart local v7       #bits:Lmyorg/bouncycastle/asn1/DERBitString;
    .restart local v9       #data:[B
    .restart local v18       #qLength:I
    :catch_1
    move-exception v12

    .line 230
    .restart local v12       #ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "error recovering public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 396
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 398
    .local v0, enc:[B
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 400
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    .line 401
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    .line 402
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
    .line 405
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 407
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 408
    return-void
.end method


# virtual methods
.method public engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    .line 361
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

    .line 381
    instance-of v2, p1, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    if-nez v2, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 385
    check-cast v0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;

    .line 387
    .local v0, other:Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

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
    .line 241
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 13

    .prologue
    .line 252
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    const-string v3, "ECGOST3410"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    if-eqz v2, :cond_0

    .line 254
    iget-object v12, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    .line 271
    .local v12, params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :goto_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 272
    .local v6, bX:Ljava/math/BigInteger;
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 273
    .local v7, bY:Ljava/math/BigInteger;
    const/16 v2, 0x40

    new-array v9, v2, [B

    .line 275
    .local v9, encKey:[B
    const/4 v2, 0x0

    invoke-direct {p0, v9, v2, v6}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    .line 276
    const/16 v2, 0x20

    invoke-direct {p0, v9, v2, v7}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    .line 278
    new-instance v10, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3410_2001:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lmyorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v9}, Lmyorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v10, v2, v3}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 308
    .end local v6           #bX:Ljava/math/BigInteger;
    .end local v7           #bY:Ljava/math/BigInteger;
    .end local v9           #encKey:[B
    .local v10, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_1
    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getDEREncoded()[B

    move-result-object v2

    return-object v2

    .line 256
    .end local v10           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v12           #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :cond_0
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_1

    .line 257
    new-instance v12, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/cryptopro/ECGOST3410NamedCurves;->getOID(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    sget-object v3, Lmyorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_CryptoProParamSet:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v12, v2, v3}, Lmyorg/bouncycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .restart local v12       #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_0

    .line 261
    .end local v12           #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :cond_1
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 263
    .local v1, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 267
    .local v0, ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .restart local v12       #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    goto/16 :goto_0

    .line 282
    .end local v0           #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    .end local v1           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v12           #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v2, v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v2, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    invoke-virtual {v2}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->getNamedCurveOid(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v8

    .line 286
    .local v8, curveOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v8}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 299
    .end local v8           #curveOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v12       #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :goto_2
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 300
    .restart local v1       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v2, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    iget-boolean v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v1, v3, v4, v5}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;-><init>(Lmyorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x9/X9ECPoint;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 304
    .local v11, p:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v10, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lmyorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v11}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v10, v2, v3}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .restart local v10       #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    goto/16 :goto_1

    .line 287
    .end local v1           #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    .end local v10           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v11           #p:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    .end local v12           #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v2, :cond_4

    .line 288
    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    sget-object v2, Lmyorg/bouncycastle/asn1/DERNull;->INSTANCE:Lmyorg/bouncycastle/asn1/DERNull;

    invoke-direct {v12, v2}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    .restart local v12       #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_2

    .line 290
    .end local v12           #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    :cond_4
    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 292
    .restart local v1       #curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 296
    .restart local v0       #ecP:Lmyorg/bouncycastle/asn1/x9/X9ECParameters;
    new-instance v12, Lmyorg/bouncycastle/asn1/x9/X962Parameters;

    invoke-direct {v12, v0}, Lmyorg/bouncycastle/asn1/x9/X962Parameters;-><init>(Lmyorg/bouncycastle/asn1/x9/X9ECParameters;)V

    .restart local v12       #params:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    goto/16 :goto_2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x0

    .line 333
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v0

    goto :goto_0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    instance-of v0, v0, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 349
    :goto_0
    return-object v0

    .line 345
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    goto :goto_0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/security/spec/ECPoint;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 392
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECPoint;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 365
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 366
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, nl:Ljava/lang/String;
    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lmyorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lmyorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
