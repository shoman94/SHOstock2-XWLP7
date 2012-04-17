.class public interface abstract Lmyorg/bouncycastle/asn1/esf/ESFAttributes;
.super Ljava/lang/Object;
.source "ESFAttributes.java"


# static fields
.field public static final archiveTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certCRLTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final certificateRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final commitmentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final contentTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final escTimeStamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final otherSigCert:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final revocationRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final revocationValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final sigPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signerAttr:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final signerLocation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_sigPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->sigPolicyId:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_commitmentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->commitmentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_signerLocation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->signerLocation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_signerAttr:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->signerAttr:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_otherSigCert:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->otherSigCert:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_contentTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->contentTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certificateRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->certificateRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_revocationRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->revocationRefs:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->certValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_revocationValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->revocationValues:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_escTimeStamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->escTimeStamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_certCRLTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->certCRLTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_ets_archiveTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/ESFAttributes;->archiveTimestamp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
