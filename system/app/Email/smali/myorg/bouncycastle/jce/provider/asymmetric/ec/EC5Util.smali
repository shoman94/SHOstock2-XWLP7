.class public Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;
.super Ljava/lang/Object;
.source "EC5Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCurve(Lmyorg/bouncycastle/math/ec/ECCurve;[B)Ljava/security/spec/EllipticCurve;
    .locals 7
    .parameter "curve"
    .parameter "seed"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 22
    instance-of v2, p0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    if-eqz v2, :cond_0

    .line 23
    new-instance v3, Ljava/security/spec/EllipticCurve;

    new-instance v4, Ljava/security/spec/ECFieldFp;

    move-object v2, p0

    check-cast v2, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v2, v3

    .line 41
    :goto_0
    return-object v2

    :cond_0
    move-object v0, p0

    .line 26
    check-cast v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 29
    .local v0, curveF2m:Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-array v1, v4, [I

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v2

    aput v2, v1, v3

    .line 34
    .local v1, ks:[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    .line 37
    .end local v1           #ks:[I
    :cond_1
    const/4 v2, 0x3

    new-array v1, v2, [I

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getK3()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getK2()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x2

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getK1()I

    move-result v3

    aput v3, v1, v2

    .line 41
    .restart local v1       #ks:[I
    new-instance v2, Ljava/security/spec/EllipticCurve;

    new-instance v3, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v4

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve;->getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0
.end method

.method public static convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;
    .locals 10
    .parameter "ec"

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v7

    .line 49
    .local v7, field:Ljava/security/spec/ECField;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    .line 50
    .local v5, a:Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v6

    .line 52
    .local v6, b:Ljava/math/BigInteger;
    instance-of v0, v7, Ljava/security/spec/ECFieldFp;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;

    check-cast v7, Ljava/security/spec/ECFieldFp;

    .end local v7           #field:Ljava/security/spec/ECField;
    invoke-virtual {v7}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2, v5, v6}, Lmyorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 58
    :goto_0
    return-object v0

    .restart local v7       #field:Ljava/security/spec/ECField;
    :cond_0
    move-object v8, v7

    .line 55
    check-cast v8, Ljava/security/spec/ECFieldF2m;

    .line 56
    .local v8, fieldF2m:Ljava/security/spec/ECFieldF2m;
    invoke-virtual {v8}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v1

    .line 57
    .local v1, m:I
    invoke-virtual {v8}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/ECUtil;->convertMidTerms([I)[I

    move-result-object v9

    .line 58
    .local v9, ks:[I
    new-instance v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/4 v4, 0x2

    aget v4, v9, v4

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public static convertPoint(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .parameter "ecSpec"
    .parameter "point"
    .parameter "withCompression"

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 2
    .parameter "curve"
    .parameter "point"
    .parameter "withCompression"

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lmyorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static convertSpec(Ljava/security/spec/EllipticCurve;Lmyorg/bouncycastle/jce/spec/ECParameterSpec;)Ljava/security/spec/ECParameterSpec;
    .locals 6
    .parameter "ellipticCurve"
    .parameter "spec"

    .prologue
    .line 64
    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;

    move-object v1, p1

    check-cast v1, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/spec/ECNamedCurveSpec;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECPoint;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getG()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECPoint;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0
.end method

.method public static convertSpec(Ljava/security/spec/ECParameterSpec;Z)Lmyorg/bouncycastle/jce/spec/ECParameterSpec;
    .locals 6
    .parameter "ecSpec"
    .parameter "withCompression"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertCurve(Ljava/security/spec/EllipticCurve;)Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 79
    .local v1, curve:Lmyorg/bouncycastle/math/ec/ECCurve;
    new-instance v0, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lmyorg/bouncycastle/jce/provider/asymmetric/ec/EC5Util;->convertPoint(Lmyorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;Z)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/jce/spec/ECParameterSpec;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
