.class public Lmyorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;
.super Ljava/lang/Object;
.source "ECDHCBasicAgreement.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BasicAgreement;


# instance fields
.field key:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lmyorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .locals 6
    .parameter "pubKey"

    .prologue
    .line 38
    move-object v2, p1

    check-cast v2, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    .line 39
    .local v2, pub:Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getParameters()Lmyorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    .line 40
    .local v1, params:Lmyorg/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v2}, Lmyorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lmyorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->key:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 44
    .local v0, P:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 34
    check-cast p1, Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;->key:Lmyorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    .line 35
    return-void
.end method
