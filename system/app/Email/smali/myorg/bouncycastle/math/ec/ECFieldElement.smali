.class public abstract Lmyorg/bouncycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source "ECFieldElement.java"

# interfaces
.implements Lmyorg/bouncycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/math/ec/ECFieldElement$F2m;,
        Lmyorg/bouncycastle/math/ec/ECFieldElement$Fp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 757
    return-void
.end method


# virtual methods
.method public abstract add(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract divide(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract invert()Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract multiply(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract negate()Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract sqrt()Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract square()Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract subtract(Lmyorg/bouncycastle/math/ec/ECFieldElement;)Lmyorg/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract toBigInteger()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lmyorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
