.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithSHA256And192BitAESBC;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA256And192BitAESBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 440
    const-string v1, "PBEWithSHA256And192BitAES-CBC-BC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/16 v6, 0xc0

    const/16 v7, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    .line 441
    return-void
.end method
