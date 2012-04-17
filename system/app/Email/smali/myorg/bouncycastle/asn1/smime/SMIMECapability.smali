.class public Lmyorg/bouncycastle/asn1/smime/SMIMECapability;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "SMIMECapability.java"


# static fields
.field public static final aES128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final aES192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final aES256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sMIMECapabilitiesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private capabilityID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private parameters:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->preferSignedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->canNotDecryptAny:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sMIMECapabilitiesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->sMIMECapabilitiesVersions:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 26
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->dES_EDE3_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->rC2_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 28
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->aES128_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 29
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->aES192_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 30
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->aES256_CBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->capabilityID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 83
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/smime/SMIMECapability;->parameters:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 87
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
