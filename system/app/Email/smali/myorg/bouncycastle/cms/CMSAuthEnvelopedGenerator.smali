.class Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.super Ljava/lang/Object;
.source "CMSAuthEnvelopedGenerator.java"


# static fields
.field public static final AES128_CCM:Ljava/lang/String;

.field public static final AES128_GCM:Ljava/lang/String;

.field public static final AES192_CCM:Ljava/lang/String;

.field public static final AES192_GCM:Ljava/lang/String;

.field public static final AES256_CCM:Ljava/lang/String;

.field public static final AES256_GCM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES128_CCM:Ljava/lang/String;

    .line 8
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES192_CCM:Ljava/lang/String;

    .line 9
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES256_CCM:Ljava/lang/String;

    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES128_GCM:Ljava/lang/String;

    .line 11
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES192_GCM:Ljava/lang/String;

    .line 12
    sget-object v0, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_GCM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES256_GCM:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
