.class public interface abstract Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;
.super Ljava/lang/Object;
.source "NTTObjectIdentifiers.java"


# static fields
.field public static final id_camellia128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_camellia128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_camellia192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_camellia192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_camellia256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_camellia256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.3.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.3.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.2.392.200011.61.1.1.3.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
