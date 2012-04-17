.class Lmyorg/bouncycastle/math/ec/WTauNafMultiplier;
.super Ljava/lang/Object;
.source "WTauNafMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[BLmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 6
    .parameter "p"
    .parameter "u"
    .parameter "preCompInfo"

    .prologue
    .line 79
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 80
    .local v1, curve:Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 83
    .local v0, a:B
    if-eqz p2, :cond_0

    instance-of v5, p2, Lmyorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    if-nez v5, :cond_2

    .line 84
    :cond_0
    invoke-static {p0, v0}, Lmyorg/bouncycastle/math/ec/Tnaf;->getPreComp(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;B)[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .line 85
    .local v3, pu:[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    new-instance v5, Lmyorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v5, v3}, Lmyorg/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>([Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)V

    invoke-virtual {p0, v5}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->setPreCompInfo(Lmyorg/bouncycastle/math/ec/PreCompInfo;)V

    .line 91
    .end local p2
    :goto_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 92
    .local v4, q:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    array-length v5, p1

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_4

    .line 93
    invoke-static {v4}, Lmyorg/bouncycastle/math/ec/Tnaf;->tau(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 94
    aget-byte v5, p1, v2

    if-eqz v5, :cond_1

    .line 95
    aget-byte v5, p1, v2

    if-lez v5, :cond_3

    .line 96
    aget-byte v5, p1, v2

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    .line 92
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 87
    .end local v2           #i:I
    .end local v3           #pu:[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .end local v4           #q:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .restart local p2
    :cond_2
    check-cast p2, Lmyorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    .end local p2
    invoke-virtual {p2}, Lmyorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v3

    .restart local v3       #pu:[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    goto :goto_0

    .line 99
    .restart local v2       #i:I
    .restart local v4       #q:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    :cond_3
    aget-byte v5, p1, v2

    neg-int v5, v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    goto :goto_2

    .line 104
    :cond_4
    return-object v4
.end method

.method private multiplyWTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;Lmyorg/bouncycastle/math/ec/ZTauElement;Lmyorg/bouncycastle/math/ec/PreCompInfo;BB)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 7
    .parameter "p"
    .parameter "lambda"
    .parameter "preCompInfo"
    .parameter "a"
    .parameter "mu"

    .prologue
    const/4 v2, 0x4

    .line 53
    if-nez p4, :cond_0

    .line 54
    sget-object v5, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    .line 60
    .local v5, alpha:[Lmyorg/bouncycastle/math/ec/ZTauElement;
    :goto_0
    invoke-static {p5, v2}, Lmyorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    .line 62
    .local v4, tw:Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLmyorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lmyorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v6

    .line 65
    .local v6, u:[B
    invoke-static {p1, v6, p3}, Lmyorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[BLmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0

    .line 57
    .end local v4           #tw:Ljava/math/BigInteger;
    .end local v5           #alpha:[Lmyorg/bouncycastle/math/ec/ZTauElement;
    .end local v6           #u:[B
    :cond_0
    sget-object v5, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    .restart local v5       #alpha:[Lmyorg/bouncycastle/math/ec/ZTauElement;
    goto :goto_0
.end method


# virtual methods
.method public multiply(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 12
    .parameter "point"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 21
    instance-of v0, p1, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v6, p1

    .line 26
    check-cast v6, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 28
    .local v6, p:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    invoke-virtual {v6}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 29
    .local v11, curve:Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v1

    .line 30
    .local v1, m:I
    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 31
    .local v2, a:B
    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v4

    .line 32
    .local v4, mu:B
    invoke-virtual {v11}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 34
    .local v3, s:[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lmyorg/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lmyorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .local v7, rho:Lmyorg/bouncycastle/math/ec/ZTauElement;
    move-object v5, p0

    move-object v8, p3

    move v9, v2

    move v10, v4

    .line 36
    invoke-direct/range {v5 .. v10}, Lmyorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;Lmyorg/bouncycastle/math/ec/ZTauElement;Lmyorg/bouncycastle/math/ec/PreCompInfo;BB)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v0

    return-object v0
.end method
