.class public interface abstract Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;
.super Ljava/lang/Object;
.source "CommitmentTypeIdentifier.java"


# static fields
.field public static final proofOfApproval:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final proofOfCreation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final proofOfDelivery:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final proofOfOrigin:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final proofOfReceipt:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final proofOfSender:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfOrigin:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfOrigin:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 9
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfReceipt:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfReceipt:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfDelivery:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfDelivery:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 11
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfSender:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfSender:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 12
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfApproval:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfApproval:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_cti_ets_proofOfCreation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/esf/CommitmentTypeIdentifier;->proofOfCreation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
