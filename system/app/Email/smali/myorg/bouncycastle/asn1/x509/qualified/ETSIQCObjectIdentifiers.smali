.class public interface abstract Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;
.super Ljava/lang/Object;
.source "ETSIQCObjectIdentifiers.java"


# static fields
.field public static final id_etsi_qcs_LimiteValue:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_etsi_qcs_QcCompliance:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_etsi_qcs_QcSSCD:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_etsi_qcs_RetentionPeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.4.0.1862.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_QcCompliance:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.4.0.1862.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_LimiteValue:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.4.0.1862.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_RetentionPeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.4.0.1862.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;->id_etsi_qcs_QcSSCD:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
