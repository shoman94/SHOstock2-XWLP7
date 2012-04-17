.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEA$ECB;
.super Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/IDEAEngine;-><init>()V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/JCEBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    .line 34
    return-void
.end method
