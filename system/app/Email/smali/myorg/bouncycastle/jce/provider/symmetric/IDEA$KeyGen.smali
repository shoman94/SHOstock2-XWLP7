.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEA$KeyGen;
.super Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "IDEA"

    const/16 v1, 0x80

    new-instance v2, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 46
    return-void
.end method
