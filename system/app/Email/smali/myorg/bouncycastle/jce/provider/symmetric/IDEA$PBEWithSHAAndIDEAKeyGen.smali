.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEA$PBEWithSHAAndIDEAKeyGen;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHAAndIDEAKeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 51
    const-string v1, "PBEwithSHAandIDEA-CBC"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/16 v6, 0x80

    const/16 v7, 0x40

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    .line 52
    return-void
.end method
