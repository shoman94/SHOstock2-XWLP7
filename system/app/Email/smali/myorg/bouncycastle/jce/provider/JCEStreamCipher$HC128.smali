.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$HC128;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HC128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 413
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/HC128Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/HC128Engine;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    .line 414
    return-void
.end method
