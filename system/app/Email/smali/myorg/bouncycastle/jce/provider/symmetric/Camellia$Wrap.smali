.class public Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$Wrap;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/CamelliaWrapEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/CamelliaWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lmyorg/bouncycastle/crypto/Wrapper;)V

    .line 40
    return-void
.end method
