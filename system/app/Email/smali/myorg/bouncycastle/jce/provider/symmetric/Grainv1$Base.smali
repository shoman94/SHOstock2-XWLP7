.class public Lmyorg/bouncycastle/jce/provider/symmetric/Grainv1$Base;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "Grainv1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/Grainv1;
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
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/Grainv1Engine;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    .line 16
    return-void
.end method
