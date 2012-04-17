.class public abstract Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.source "KeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECMQV;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDHC;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDH;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECGOST3410;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$ECDSA;,
        Lmyorg/bouncycastle/jce/provider/asymmetric/ec/KeyPairGenerator$EC;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithmName"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 38
    return-void
.end method
