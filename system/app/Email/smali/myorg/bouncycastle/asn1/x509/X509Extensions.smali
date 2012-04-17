.class public Lmyorg/bouncycastle/asn1/x509/X509Extensions;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Extensions.java"


# static fields
.field public static final AuditIdentity:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final BiometricInfo:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InstructionCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final InvalidityDate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuerAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final LogoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PrivateKeyUsagePeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final QCStatements:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectDirectoryAttributes:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SubjectKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private extensions:Ljava/util/Hashtable;

.field private ordering:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectDirectoryAttributes:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 28
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.14"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 34
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.15"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 39
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.16"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PrivateKeyUsagePeriod:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 45
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.17"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.18"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuerAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 57
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.19"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 62
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.20"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 67
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.21"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 72
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.23"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InstructionCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 77
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.24"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 82
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.27"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 87
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.28"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.29"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificateIssuer:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 98
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.30"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 103
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.31"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 109
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.32"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 115
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.33"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 120
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.35"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 126
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.36"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 131
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.37"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 136
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.46"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 141
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.54"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 146
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 152
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.11"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 158
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.12"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->LogoType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 163
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BiometricInfo:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 169
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 175
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.1.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuditIdentity:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 181
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.56"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 186
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.29.55"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 10
    .parameter "seq"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 216
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 188
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    .line 189
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    .line 217
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 219
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 222
    .local v1, s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v5

    invoke-virtual {v1, v9}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Extension;-><init>(Lmyorg/bouncycastle/asn1/DERBoolean;Lmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v9, :cond_1

    .line 228
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    invoke-virtual {v1, v8}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lmyorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLmyorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 231
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    .end local v1           #s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;
    .locals 3
    .parameter "obj"

    .prologue
    .line 196
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    .line 205
    .end local p0
    :goto_0
    return-object p0

    .line 200
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 204
    .restart local p0
    :cond_2
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_3

    .line 205
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object p0

    goto :goto_0

    .line 208
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getExtension(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .locals 1
    .parameter "oid"

    .prologue
    .line 314
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    return-object v0
.end method

.method public oids()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 7

    .prologue
    .line 328
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 329
    .local v4, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 331
    .local v0, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 333
    .local v2, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/asn1/x509/X509Extension;

    .line 334
    .local v1, ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 336
    .local v3, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v3, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 338
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    new-instance v5, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 342
    :cond_0
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lmyorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 344
    new-instance v5, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 347
    .end local v1           #ext:Lmyorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v3           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_1
    new-instance v5, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v5
.end method
