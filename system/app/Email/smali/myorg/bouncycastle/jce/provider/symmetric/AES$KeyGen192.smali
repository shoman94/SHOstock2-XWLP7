.class public Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen192;
.super Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen192"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0xc0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/symmetric/AES$KeyGen;-><init>(I)V

    .line 84
    return-void
.end method
