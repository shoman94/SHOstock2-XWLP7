.class public interface abstract Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;
.super Ljava/lang/Object;
.source "CMSObjectIdentifiers.java"


# static fields
.field public static final authEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final authenticatedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final compressedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final digestedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final encryptedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final envelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signedAndEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedAndEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedAndEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->digestedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->digestedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->encryptedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_compressedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->compressedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_authEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
