.class Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field private preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;

.field private twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 23
    iput-object v0, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method protected getPreComp()[Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected getTwiceP()Lmyorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method protected setPreComp([Lmyorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .parameter "preComp"

    .prologue
    .line 30
    iput-object p1, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 31
    return-void
.end method

.method protected setTwiceP(Lmyorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .parameter "twiceThis"

    .prologue
    .line 38
    iput-object p1, p0, Lmyorg/bouncycastle/math/ec/WNafPreCompInfo;->twiceP:Lmyorg/bouncycastle/math/ec/ECPoint;

    .line 39
    return-void
.end method
