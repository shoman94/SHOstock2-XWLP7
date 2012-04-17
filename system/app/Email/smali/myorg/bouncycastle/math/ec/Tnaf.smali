.class Lmyorg/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final alpha0:[Lmyorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lmyorg/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 14
    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lmyorg/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Lmyorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [Lmyorg/bouncycastle/math/ec/ZTauElement;

    aput-object v5, v0, v8

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmyorg/bouncycastle/math/ec/ZTauElement;

    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v5, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lmyorg/bouncycastle/math/ec/ZTauElement;

    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [[B

    aput-object v5, v0, v8

    new-array v1, v6, [B

    aput-byte v6, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x2

    aput-object v5, v0, v1

    new-array v1, v7, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    aput-object v5, v0, v9

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v5, v0, v1

    const/4 v1, 0x7

    new-array v2, v9, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    .line 47
    :array_0
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_2
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 74
    :array_3
    .array-data 0x1
        0xfft
        0x0t
        0x1t
    .end array-data

    :array_4
    .array-data 0x1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_5
    .array-data 0x1
        0xfft
        0x0t
        0x0t
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .locals 8
    .parameter "k"
    .parameter "s"
    .parameter "vm"
    .parameter "a"
    .parameter "m"
    .parameter "c"

    .prologue
    .line 263
    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    .line 264
    .local v0, _k:I
    sub-int v7, p4, v0

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 266
    .local v6, ns:Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 268
    .local v1, gs:Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 270
    .local v3, hs:Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 272
    .local v4, js:Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 273
    .local v2, gsPlusJs:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 274
    .local v5, ls:Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 276
    sget-object v7, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 279
    :cond_0
    new-instance v7, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .locals 9
    .parameter "mu"
    .parameter "k"
    .parameter "doV"

    .prologue
    const/4 v8, 0x1

    .line 413
    if-eq p0, v8, :cond_0

    const/4 v6, -0x1

    if-eq p0, v6, :cond_0

    .line 414
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :cond_0
    if-eqz p2, :cond_1

    .line 422
    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 423
    .local v3, u0:Ljava/math/BigInteger;
    int-to-long v6, p0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 429
    .local v4, u1:Ljava/math/BigInteger;
    :goto_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_3

    .line 431
    const/4 v2, 0x0

    .line 432
    .local v2, s:Ljava/math/BigInteger;
    if-ne p0, v8, :cond_2

    .line 433
    move-object v2, v4

    .line 439
    :goto_2
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 440
    .local v5, u2:Ljava/math/BigInteger;
    move-object v3, v4

    .line 441
    move-object v4, v5

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    .end local v0           #i:I
    .end local v2           #s:Ljava/math/BigInteger;
    .end local v3           #u0:Ljava/math/BigInteger;
    .end local v4           #u1:Ljava/math/BigInteger;
    .end local v5           #u2:Ljava/math/BigInteger;
    :cond_1
    sget-object v3, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 426
    .restart local v3       #u0:Ljava/math/BigInteger;
    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .restart local v4       #u1:Ljava/math/BigInteger;
    goto :goto_0

    .line 436
    .restart local v0       #i:I
    .restart local v2       #s:Ljava/math/BigInteger;
    :cond_2
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_2

    .line 446
    .end local v2           #s:Ljava/math/BigInteger;
    :cond_3
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    const/4 v6, 0x0

    aput-object v3, v1, v6

    aput-object v4, v1, v8

    .line 449
    .local v1, retVal:[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)B
    .locals 4
    .parameter "curve"

    .prologue
    .line 383
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 386
    .local v0, a:Ljava/math/BigInteger;
    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const/4 v1, -0x1

    .line 394
    .local v1, mu:B
    :goto_0
    return v1

    .line 388
    .end local v1           #mu:B
    :cond_0
    sget-object v2, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    const/4 v1, 0x1

    .restart local v1       #mu:B
    goto :goto_0

    .line 391
    .end local v1           #mu:B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getPreComp(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;B)[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .parameter "p"
    .parameter "a"

    .prologue
    .line 735
    const/16 v4, 0x10

    new-array v3, v4, [Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 736
    .local v3, pu:[Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    const/4 v4, 0x1

    aput-object p0, v3, v4

    .line 738
    if-nez p1, :cond_0

    .line 739
    sget-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 745
    .local v0, alphaTnaf:[[B
    :goto_0
    array-length v2, v0

    .line 746
    .local v2, precompLen:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 747
    aget-object v4, v0, v1

    invoke-static {p0, v4}, Lmyorg/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[B)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v4

    aput-object v4, v3, v1

    .line 746
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 742
    .end local v0           #alphaTnaf:[[B
    .end local v1           #i:I
    .end local v2           #precompLen:I
    :cond_0
    sget-object v0, Lmyorg/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .restart local v0       #alphaTnaf:[[B
    goto :goto_0

    .line 750
    .restart local v1       #i:I
    .restart local v2       #precompLen:I
    :cond_1
    return-object v3
.end method

.method public static getSi(Lmyorg/bouncycastle/math/ec/ECCurve$F2m;)[Ljava/math/BigInteger;
    .locals 14
    .parameter "curve"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 492
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    move-result v9

    if-nez v9, :cond_0

    .line 493
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "si is defined for Koblitz curves only"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 496
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    move-result v5

    .line 497
    .local v5, m:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 498
    .local v0, a:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    move-result v6

    .line 499
    .local v6, mu:B
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getH()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    .line 500
    .local v3, h:I
    add-int/lit8 v9, v5, 0x3

    sub-int v4, v9, v0

    .line 501
    .local v4, index:I
    invoke-static {v6, v4, v12}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v8

    .line 505
    .local v8, ui:[Ljava/math/BigInteger;
    if-ne v6, v11, :cond_1

    .line 506
    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 507
    .local v1, dividend0:Ljava/math/BigInteger;
    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 515
    .local v2, dividend1:Ljava/math/BigInteger;
    :goto_0
    new-array v7, v13, [Ljava/math/BigInteger;

    .line 517
    .local v7, si:[Ljava/math/BigInteger;
    if-ne v3, v13, :cond_3

    .line 518
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 519
    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    .line 527
    :goto_1
    return-object v7

    .line 508
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    .end local v7           #si:[Ljava/math/BigInteger;
    :cond_1
    const/4 v9, -0x1

    if-ne v6, v9, :cond_2

    .line 509
    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 510
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    sget-object v9, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #dividend1:Ljava/math/BigInteger;
    goto :goto_0

    .line 512
    .end local v1           #dividend0:Ljava/math/BigInteger;
    .end local v2           #dividend1:Ljava/math/BigInteger;
    :cond_2
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "mu must be 1 or -1"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 520
    .restart local v1       #dividend0:Ljava/math/BigInteger;
    .restart local v2       #dividend1:Ljava/math/BigInteger;
    .restart local v7       #si:[Ljava/math/BigInteger;
    :cond_3
    const/4 v9, 0x4

    if-ne v3, v9, :cond_4

    .line 521
    invoke-virtual {v1, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v12

    .line 522
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v7, v11

    goto :goto_1

    .line 524
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "h (Cofactor) must be 2 or 4"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .locals 7
    .parameter "mu"
    .parameter "w"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 463
    if-ne p0, v6, :cond_0

    .line 464
    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 478
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 471
    :cond_1
    invoke-static {p0, p1, v5}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    .line 472
    .local v3, us:[Ljava/math/BigInteger;
    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 473
    .local v1, twoToW:Ljava/math/BigInteger;
    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 475
    .local v2, u1invert:Ljava/math/BigInteger;
    sget-object v4, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 478
    .local v0, tw:Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public static multiplyFromTnaf(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;[B)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 5
    .parameter "p"
    .parameter "u"

    .prologue
    .line 624
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;

    .line 625
    .local v0, curve:Lmyorg/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECCurve$F2m;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    .line 626
    .local v2, q:Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    array-length v3, p1

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 627
    invoke-static {v2}, Lmyorg/bouncycastle/math/ec/Tnaf;->tau(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 628
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 629
    invoke-virtual {v2, p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    .line 626
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 630
    :cond_1
    aget-byte v3, p1, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 631
    invoke-virtual {v2, p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    move-result-object v2

    goto :goto_1

    .line 634
    :cond_2
    return-object v2
.end method

.method public static norm(BLmyorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .locals 7
    .parameter "mu"
    .parameter "lambda"

    .prologue
    const/4 v6, 0x1

    .line 99
    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    .local v1, s1:Ljava/math/BigInteger;
    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 105
    .local v2, s2:Ljava/math/BigInteger;
    iget-object v4, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 107
    .local v3, s3:Ljava/math/BigInteger;
    if-ne p0, v6, :cond_0

    .line 108
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 115
    .local v0, norm:Ljava/math/BigInteger;
    :goto_0
    return-object v0

    .line 109
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_0
    const/4 v4, -0x1

    if-ne p0, v4, :cond_1

    .line 110
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0       #norm:Ljava/math/BigInteger;
    goto :goto_0

    .line 112
    .end local v0           #norm:Ljava/math/BigInteger;
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lmyorg/bouncycastle/math/ec/ZTauElement;
    .locals 14
    .parameter "k"
    .parameter "m"
    .parameter "a"
    .parameter "s"
    .parameter "mu"
    .parameter "c"

    .prologue
    .line 548
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_0

    .line 549
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 554
    .local v7, d0:Ljava/math/BigInteger;
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p4

    invoke-static {v0, p1, v1}, Lmyorg/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v13

    .line 555
    .local v13, v:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v3, v13, v1

    .line 557
    .local v3, vm:Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 559
    .local v8, lambda0:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v1, 0x1

    aget-object v2, p3, v1

    move-object v1, p0

    move/from16 v4, p2

    move v5, p1

    move/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lmyorg/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 561
    .local v9, lambda1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    move/from16 v0, p4

    invoke-static {v8, v9, v0}, Lmyorg/bouncycastle/math/ec/Tnaf;->round(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lmyorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v10

    .line 564
    .local v10, q:Lmyorg/bouncycastle/math/ec/ZTauElement;
    iget-object v1, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v4, 0x1

    aget-object v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 568
    .local v11, r0:Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, p3, v1

    iget-object v2, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p3, v2

    iget-object v4, v10, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 570
    .local v12, r1:Ljava/math/BigInteger;
    new-instance v1, Lmyorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v1, v11, v12}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    .line 551
    .end local v3           #vm:Ljava/math/BigInteger;
    .end local v7           #d0:Ljava/math/BigInteger;
    .end local v8           #lambda0:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9           #lambda1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10           #q:Lmyorg/bouncycastle/math/ec/ZTauElement;
    .end local v11           #r0:Ljava/math/BigInteger;
    .end local v12           #r1:Ljava/math/BigInteger;
    .end local v13           #v:[Ljava/math/BigInteger;
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .restart local v7       #d0:Ljava/math/BigInteger;
    goto :goto_0
.end method

.method public static round(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;B)Lmyorg/bouncycastle/math/ec/ZTauElement;
    .locals 17
    .parameter "lambda0"
    .parameter "lambda1"
    .parameter "mu"

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v13

    .line 170
    .local v13, scale:I
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v15

    if-eq v15, v13, :cond_0

    .line 171
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "lambda0 and lambda1 do not have same scale"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 174
    :cond_0
    const/4 v15, 0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    const/4 v15, -0x1

    move/from16 v0, p2

    if-eq v0, v15, :cond_1

    .line 175
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "mu must be 1 or -1"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 178
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v6

    .line 179
    .local v6, f0:Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    .line 181
    .local v7, f1:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 182
    .local v4, eta0:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 185
    .local v5, eta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v4}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 186
    .local v3, eta:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_4

    .line 187
    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 195
    :goto_0
    invoke-virtual {v5, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v15

    invoke-virtual {v15, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v14

    .line 196
    .local v14, threeEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v14, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 199
    .local v8, fourEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v15, 0x1

    move/from16 v0, p2

    if-ne v0, v15, :cond_5

    .line 200
    invoke-virtual {v4, v14}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 201
    .local v1, check1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v8}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 208
    .local v2, check2:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1
    const/4 v9, 0x0

    .line 209
    .local v9, h0:B
    const/4 v10, 0x0

    .line 212
    .local v10, h1:B
    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7

    .line 213
    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_6

    .line 214
    move/from16 v10, p2

    .line 226
    :cond_2
    :goto_2
    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9

    .line 227
    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_8

    .line 228
    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    .line 239
    :cond_3
    :goto_3
    int-to-long v15, v9

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 240
    .local v11, q0:Ljava/math/BigInteger;
    int-to-long v15, v10

    invoke-static/range {v15 .. v16}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 241
    .local v12, q1:Ljava/math/BigInteger;
    new-instance v15, Lmyorg/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v15, v11, v12}, Lmyorg/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v15

    .line 190
    .end local v1           #check1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v2           #check2:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v8           #fourEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9           #h0:B
    .end local v10           #h1:B
    .end local v11           #q0:Ljava/math/BigInteger;
    .end local v12           #q1:Ljava/math/BigInteger;
    .end local v14           #threeEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_4
    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    goto :goto_0

    .line 204
    .restart local v8       #fourEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v14       #threeEta1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_5
    invoke-virtual {v4, v14}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->add(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 205
    .restart local v1       #check1:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v4, v8}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;)Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .restart local v2       #check2:Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1

    .line 216
    .restart local v9       #h0:B
    .restart local v10       #h1:B
    :cond_6
    const/4 v9, 0x1

    goto :goto_2

    .line 220
    :cond_7
    sget-object v15, Lmyorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_2

    .line 221
    move/from16 v10, p2

    goto :goto_2

    .line 230
    :cond_8
    const/4 v9, -0x1

    goto :goto_3

    .line 234
    :cond_9
    sget-object v15, Lmyorg/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lmyorg/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_3

    .line 235
    move/from16 v0, p2

    neg-int v15, v0

    int-to-byte v10, v15

    goto :goto_3
.end method

.method public static tau(Lmyorg/bouncycastle/math/ec/ECPoint$F2m;)Lmyorg/bouncycastle/math/ec/ECPoint$F2m;
    .locals 7
    .parameter "p"

    .prologue
    .line 361
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    .end local p0
    :goto_0
    return-object p0

    .line 365
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getX()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 366
    .local v0, x:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getY()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 368
    .local v1, y:Lmyorg/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->square()Lmyorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;->isCompressed()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lmyorg/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lmyorg/bouncycastle/math/ec/ECCurve;Lmyorg/bouncycastle/math/ec/ECFieldElement;Lmyorg/bouncycastle/math/ec/ECFieldElement;Z)V

    move-object p0, v2

    goto :goto_0
.end method

.method public static tauAdicWNaf(BLmyorg/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lmyorg/bouncycastle/math/ec/ZTauElement;)[B
    .locals 15
    .parameter "mu"
    .parameter "lambda"
    .parameter "width"
    .parameter "pow2w"
    .parameter "tw"
    .parameter "alpha"

    .prologue
    .line 654
    const/4 v13, 0x1

    if-eq p0, v13, :cond_0

    const/4 v13, -0x1

    if-eq p0, v13, :cond_0

    .line 655
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "mu must be 1 or -1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 658
    :cond_0
    invoke-static/range {p0 .. p1}, Lmyorg/bouncycastle/math/ec/Tnaf;->norm(BLmyorg/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 661
    .local v4, norm:Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 664
    .local v2, log2Norm:I
    const/16 v13, 0x1e

    if-le v2, v13, :cond_3

    add-int/lit8 v13, v2, 0x4

    add-int v3, v13, p2

    .line 667
    .local v3, maxLength:I
    :goto_0
    new-array v10, v3, [B

    .line 670
    .local v10, u:[B
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 673
    .local v5, pow2wMin1:Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v6, v0, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 674
    .local v6, r0:Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v7, v0, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 675
    .local v7, r1:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 678
    .local v1, i:I
    :goto_1
    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lmyorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 680
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 682
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 686
    .local v12, uUnMod:Ljava/math/BigInteger;
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_4

    .line 687
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .line 693
    .local v11, uLocal:B
    :goto_2
    aput-byte v11, v10, v1

    .line 694
    const/4 v8, 0x1

    .line 695
    .local v8, s:Z
    if-gez v11, :cond_2

    .line 696
    const/4 v8, 0x0

    .line 697
    neg-int v13, v11

    int-to-byte v11, v13

    .line 701
    :cond_2
    if-eqz v8, :cond_5

    .line 702
    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 703
    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 712
    .end local v8           #s:Z
    .end local v11           #uLocal:B
    .end local v12           #uUnMod:Ljava/math/BigInteger;
    :goto_3
    move-object v9, v6

    .line 714
    .local v9, t:Ljava/math/BigInteger;
    const/4 v13, 0x1

    if-ne p0, v13, :cond_7

    .line 715
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 720
    :goto_4
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 721
    add-int/lit8 v1, v1, 0x1

    .line 722
    goto :goto_1

    .line 664
    .end local v1           #i:I
    .end local v3           #maxLength:I
    .end local v5           #pow2wMin1:Ljava/math/BigInteger;
    .end local v6           #r0:Ljava/math/BigInteger;
    .end local v7           #r1:Ljava/math/BigInteger;
    .end local v9           #t:Ljava/math/BigInteger;
    .end local v10           #u:[B
    :cond_3
    add-int/lit8 v3, p2, 0x22

    goto :goto_0

    .line 689
    .restart local v1       #i:I
    .restart local v3       #maxLength:I
    .restart local v5       #pow2wMin1:Ljava/math/BigInteger;
    .restart local v6       #r0:Ljava/math/BigInteger;
    .restart local v7       #r1:Ljava/math/BigInteger;
    .restart local v10       #u:[B
    .restart local v12       #uUnMod:Ljava/math/BigInteger;
    :cond_4
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .restart local v11       #uLocal:B
    goto :goto_2

    .line 705
    .restart local v8       #s:Z
    :cond_5
    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 706
    aget-object v13, p5, v11

    iget-object v13, v13, Lmyorg/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3

    .line 709
    .end local v8           #s:Z
    .end local v11           #uLocal:B
    .end local v12           #uUnMod:Ljava/math/BigInteger;
    :cond_6
    const/4 v13, 0x0

    aput-byte v13, v10, v1

    goto :goto_3

    .line 718
    .restart local v9       #t:Ljava/math/BigInteger;
    :cond_7
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_4

    .line 723
    .end local v9           #t:Ljava/math/BigInteger;
    :cond_8
    return-object v10
.end method
