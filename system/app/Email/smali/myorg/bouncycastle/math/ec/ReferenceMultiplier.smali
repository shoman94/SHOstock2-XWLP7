.class Lmyorg/bouncycastle/math/ec/ReferenceMultiplier;
.super Ljava/lang/Object;
.source "ReferenceMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECMultiplier;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiply(Lmyorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lmyorg/bouncycastle/math/ec/PreCompInfo;)Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 4
    .parameter "p"
    .parameter "k"
    .parameter "preCompInfo"

    .prologue
    .line 17
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->getCurve()Lmyorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 18
    .local v1, q:Lmyorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 19
    .local v2, t:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 20
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v1, p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->add(Lmyorg/bouncycastle/math/ec/ECPoint;)Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/math/ec/ECPoint;->twice()Lmyorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    return-object v1
.end method
