.class public interface abstract Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;
.super Ljava/lang/Object;
.source "OCSPObjectIdentifiers.java"


# static fields
.field public static final id_pkix_ocsp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_archive_cutoff:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_basic:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_crl:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_nocheck:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_nonce:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_response:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix_ocsp_service_locator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nonce:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 18
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_crl:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_response:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nocheck:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_archive_cutoff:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 27
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.48.1.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_service_locator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
