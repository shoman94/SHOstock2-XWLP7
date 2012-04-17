.class public Lmyorg/bouncycastle/jce/provider/symmetric/SEED$Wrap;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "SEED.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/SEED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/SEEDWrapEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/SEEDWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lmyorg/bouncycastle/crypto/Wrapper;)V

    .line 39
    return-void
.end method
