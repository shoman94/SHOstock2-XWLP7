.class public interface abstract Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.super Ljava/lang/Object;
.source "X509ObjectIdentifiers.java"


# static fields
.field public static final commonName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final countryName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final crlAccessMethod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad_caIssuers:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ad_ocsp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_at_name:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_at_telephoneNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_ea_rsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pe:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final id_pkix:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final localityName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ocspAccessMethod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final organization:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final organizationalUnitName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ripemd160WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final stateOrProvinceName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->commonName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 13
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->countryName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 14
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->localityName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 15
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->stateOrProvinceName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 16
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organization:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 17
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->organizationalUnitName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 19
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 20
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 32
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.3.2.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.3.3.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ripemd160WithRSAEncryption:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 42
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.8.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ea_rsa:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 50
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pe:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 55
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_pkix:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".48"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 56
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 62
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_ocsp:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->ocspAccessMethod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 63
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ad_caIssuers:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->crlAccessMethod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method
