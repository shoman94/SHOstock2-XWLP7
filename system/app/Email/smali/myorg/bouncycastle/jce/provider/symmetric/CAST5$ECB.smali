.class public Lmyorg/bouncycastle/jce/provider/symmetric/CAST5$ECB;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "CAST5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/CAST5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/CAST5Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/CAST5Engine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 29
    return-void
.end method
