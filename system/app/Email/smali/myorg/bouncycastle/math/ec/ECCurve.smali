.class public abstract Lmyorg/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/math/ec/ECCurve$F2m;,
        Lmyorg/bouncycastle/math/ec/ECCurve$Fp;
    }
.end annotation


# instance fields
.field a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

.field b:Lmyorg/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method


# virtual methods
.method public abstract createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lmyorg/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract decodePoint([B)Lmyorg/bouncycastle/math/ec/ECPoint;
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->a:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lmyorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/ECCurve;->b:Lmyorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;
.end method
