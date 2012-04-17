.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$Skipjack_OFB8;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Skipjack_OFB8"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 350
    new-instance v0, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/SkipjackEngine;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;I)V

    .line 351
    return-void
.end method
