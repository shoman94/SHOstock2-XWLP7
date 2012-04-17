.class public Lmyorg/bouncycastle/jce/provider/symmetric/AES$RFC3211Wrap;
.super Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RFC3211Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/engines/RFC3211WrapEngine;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/WrapCipherSpi;-><init>(Lmyorg/bouncycastle/crypto/Wrapper;I)V

    .line 62
    return-void
.end method
