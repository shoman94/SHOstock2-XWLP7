.class public Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer$gost3410;
.super Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.source "JDKGOST3410Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "gost3410"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/digests/GOST3411Digest;-><init>()V

    new-instance v1, Lmyorg/bouncycastle/crypto/signers/GOST3410Signer;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/signers/GOST3410Signer;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JDKGOST3410Signer;-><init>(Lmyorg/bouncycastle/crypto/Digest;Lmyorg/bouncycastle/crypto/DSA;)V

    .line 174
    return-void
.end method
