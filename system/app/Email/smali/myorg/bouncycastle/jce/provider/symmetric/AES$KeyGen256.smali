.class public Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen256;
.super Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 90
    return-void
.end method
