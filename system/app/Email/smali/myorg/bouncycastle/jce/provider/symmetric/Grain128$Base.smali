.class public Lmyorg/bouncycastle/jce/provider/symmetric/Grain128$Base;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "Grain128.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/Grain128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/Grain128Engine;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    .line 16
    return-void
.end method
