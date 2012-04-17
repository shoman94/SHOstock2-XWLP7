.class public Lmyorg/bouncycastle/jce/provider/JCEMac$MD4;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MD4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/MD4Digest;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;)V

    .line 277
    return-void
.end method
