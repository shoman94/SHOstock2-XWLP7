.class public Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;
.super Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCPKCS12KeyStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 1222
    invoke-static {}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;->access$200()Ljava/security/Provider;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;->pbewithSHAAnd40BitRC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKPKCS12KeyStore;-><init>(Ljava/security/Provider;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 1223
    return-void
.end method
