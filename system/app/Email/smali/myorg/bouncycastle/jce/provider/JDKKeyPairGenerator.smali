.class public abstract Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "JDKKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$GOST3410;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$ElGamal;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DSA;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$DH;,
        Lmyorg/bouncycastle/jce/provider/JDKKeyPairGenerator$RSA;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "algorithmName"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
