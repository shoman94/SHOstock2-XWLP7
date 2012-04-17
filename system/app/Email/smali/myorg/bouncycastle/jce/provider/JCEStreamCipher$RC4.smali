.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$RC4;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RC4"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    .line 378
    return-void
.end method
