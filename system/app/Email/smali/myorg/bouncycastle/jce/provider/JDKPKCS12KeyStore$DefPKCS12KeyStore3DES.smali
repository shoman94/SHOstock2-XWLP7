.class public Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;
.super Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefPKCS12KeyStore3DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1240
    const/4 v0, 0x0

    sget-object v1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/security/Provider;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1241
    return-void
.end method
