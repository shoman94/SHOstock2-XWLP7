.class public interface abstract Lmyorg/bouncycastle/asn1/cms/CMSAttributes;
.super Ljava/lang/Object;
.source "CMSAttributes.java"


# static fields
.field public static final contentHint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_contentHint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSAttributes;->contentHint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
