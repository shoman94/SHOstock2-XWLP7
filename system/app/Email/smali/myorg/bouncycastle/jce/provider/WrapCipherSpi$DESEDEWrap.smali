.class public Lmyorg/bouncycastle/jce/provider/WrapCipherSpi$DESEDEWrap;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "WrapCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DESEDEWrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/DESedeWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lmyorg/bouncycastle/crypto/Wrapper;)V

    .line 301
    return-void
.end method
