.class public Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$KeyGen128;
.super Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$KeyGen;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 62
    return-void
.end method
