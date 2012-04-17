.class public interface abstract Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;
.super Ljava/lang/Object;
.source "KISAObjectIdentifiers.java"


# static fields
.field public static final id_npki_app_cmsSeed_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
