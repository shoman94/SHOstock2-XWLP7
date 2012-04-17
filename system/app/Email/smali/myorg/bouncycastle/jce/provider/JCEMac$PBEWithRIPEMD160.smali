.class public Lmyorg/bouncycastle/jce/provider/JCEMac$PBEWithRIPEMD160;
.super Lmyorg/bouncycastle/jce/provider/JCEMac;
.source "JCEMac.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEMac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithRIPEMD160"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 387
    new-instance v0, Lmyorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/digests/RIPEMD160Digest;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/macs/HMac;-><init>(Lmyorg/bouncycastle/crypto/Digest;)V

    const/16 v1, 0xa0

    invoke-direct {p0, v0, v2, v2, v1}, Lmyorg/bouncycastle/jce/provider/JCEMac;-><init>(Lmyorg/bouncycastle/crypto/Mac;III)V

    .line 388
    return-void
.end method
