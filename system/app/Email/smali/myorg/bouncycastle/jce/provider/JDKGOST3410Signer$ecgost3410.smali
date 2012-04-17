.class public Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer$ecgost3410;
.super Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.source "JDKGOST3410Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ecgost3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/signers/ECGOST3410Signer;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;)V

    .line 180
    return-void
.end method
