.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$PBEWithMD5AndDES;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 266
    const-string v1, "PBEwithMD5andDES"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DESPBEKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;ZIIII)V

    .line 268
    return-void
.end method
