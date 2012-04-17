.class public Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$DES;
.super Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 70
    const-string v0, "DES"

    const/16 v1, 0x40

    new-instance v2, Lmyorg/bouncycastle/crypto/generators/DESKeyGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/generators/DESKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 71
    return-void
.end method
