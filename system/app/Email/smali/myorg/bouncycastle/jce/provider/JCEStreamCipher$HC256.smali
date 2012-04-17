.class public Lmyorg/bouncycastle/jce/provider/JCEStreamCipher$HC256;
.super Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.source "JCEStreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HC256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Lmyorg/bouncycastle/crypto/engines/HC256Engine;

    invoke-direct {v0}, Lmyorg/bouncycastle/crypto/engines/HC256Engine;-><init>()V

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCEStreamCipher;-><init>(Lmyorg/bouncycastle/crypto/StreamCipher;I)V

    .line 423
    return-void
.end method
