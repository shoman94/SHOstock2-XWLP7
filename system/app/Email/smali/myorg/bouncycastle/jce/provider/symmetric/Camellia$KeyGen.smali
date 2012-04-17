.class public Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$KeyGen;
.super Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/symmetric/Camellia$KeyGen;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "keySize"

    .prologue
    .line 55
    const-string v0, "Camellia"

    new-instance v1, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, p1, v1}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 56
    return-void
.end method
