.class public Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator$HMACSHA224;
.super Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.source "JCEKeyGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HMACSHA224"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 355
    const-string v0, "HMACSHA224"

    const/16 v1, 0xe0

    new-instance v2, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;

    invoke-direct {v2}, Lmyorg/bouncycastle/crypto/CipherKeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JCEKeyGenerator;-><init>(Ljava/lang/String;ILmyorg/bouncycastle/crypto/CipherKeyGenerator;)V

    .line 356
    return-void
.end method
