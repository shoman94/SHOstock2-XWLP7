.class public Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 77
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 78
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 79
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 81
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 82
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 83
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 84
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 86
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 87
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 88
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 89
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 96
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 104
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static addAdditionalStoreFromLocation(Ljava/lang/String;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 7
    .parameter "location"
    .parameter "pkixParams"

    .prologue
    .line 559
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isAdditionalLocationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 561
    :try_start_0
    const-string v4, "ldap://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 565
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, base:Ljava/lang/String;
    const/4 v3, 0x0

    .line 569
    .local v3, url:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 570
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ldap://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "/"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    :goto_0
    new-instance v4, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;

    invoke-direct {v4, v3, v0}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters$Builder;->build()Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;

    move-result-object v2

    .line 579
    .local v2, params:Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;
    const-string v4, "CERTIFICATE/LDAP"

    const-string v5, "myBC"

    invoke-static {v4, v2, v5}, Lmyorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lmyorg/bouncycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lmyorg/bouncycastle/util/Store;)V

    .line 581
    const-string v4, "CRL/LDAP"

    const-string v5, "myBC"

    invoke-static {v4, v2, v5}, Lmyorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lmyorg/bouncycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lmyorg/bouncycastle/util/Store;)V

    .line 583
    const-string v4, "ATTRIBUTECERTIFICATE/LDAP"

    const-string v5, "myBC"

    invoke-static {v4, v2, v5}, Lmyorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lmyorg/bouncycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lmyorg/bouncycastle/util/Store;)V

    .line 585
    const-string v4, "CERTIFICATEPAIR/LDAP"

    const-string v5, "myBC"

    invoke-static {v4, v2, v5}, Lmyorg/bouncycastle/x509/X509Store;->getInstance(Ljava/lang/String;Lmyorg/bouncycastle/x509/X509StoreParameters;Ljava/lang/String;)Lmyorg/bouncycastle/x509/X509Store;

    move-result-object v4

    invoke-virtual {p1, v4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->addAdditionalStore(Lmyorg/bouncycastle/util/Store;)V

    .line 593
    .end local v0           #base:Ljava/lang/String;
    .end local v2           #params:Lmyorg/bouncycastle/jce/X509LDAPCertStoreParameters;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    return-void

    .line 574
    .restart local v0       #base:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ldap://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 588
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exception adding X.509 stores."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected static addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 6
    .parameter "cert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerAlternativeNames()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 208
    .local v1, list:Ljava/util/List;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, temp:Ljava/lang/String;
    invoke-static {v2, p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    goto :goto_0

    .line 215
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #list:Ljava/util/List;
    .end local v2           #temp:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected static addAdditionalStoresFromCRLDistributionPoint(Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 9
    .parameter "crldp"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 664
    if-eqz p0, :cond_2

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 671
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_2

    .line 672
    aget-object v7, v1, v4

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 674
    .local v0, dpn:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v0, :cond_1

    .line 675
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_1

    .line 676
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 678
    .local v3, genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_1

    .line 679
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    .line 680
    aget-object v7, v3, v5

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERIA5String;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, location:Ljava/lang/String;
    invoke-static {v6, p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoreFromLocation(Ljava/lang/String;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 678
    .end local v6           #location:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 668
    .end local v0           #dpn:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v3           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4           #i:I
    .end local v5           #j:I
    :catch_0
    move-exception v2

    .line 669
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution points could not be read."

    invoke-direct {v7, v8, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 671
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #dpn:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v4       #i:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 690
    .end local v0           #dpn:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v1           #dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected static final findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 8
    .parameter "crlSelect"
    .parameter "crlStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 314
    .local v0, crls:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 316
    .local v3, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 317
    .local v4, lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 319
    .local v2, foundValidStore:Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 320
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 322
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Lmyorg/bouncycastle/x509/X509Store;

    if-eqz v7, :cond_0

    move-object v6, v5

    .line 323
    check-cast v6, Lmyorg/bouncycastle/x509/X509Store;

    .line 326
    .local v6, store:Lmyorg/bouncycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v6, p0}, Lmyorg/bouncycastle/x509/X509Store;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lmyorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v2, 0x1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Lmyorg/bouncycastle/util/StoreException;
    new-instance v4, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    .end local v4           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_0

    .end local v1           #e:Lmyorg/bouncycastle/util/StoreException;
    .end local v6           #store:Lmyorg/bouncycastle/x509/X509Store;
    :cond_0
    move-object v6, v5

    .line 333
    check-cast v6, Ljava/security/cert/CertStore;

    .line 336
    .local v6, store:Ljava/security/cert/CertStore;
    :try_start_1
    invoke-virtual {v6, p0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    const/4 v2, 0x1

    goto :goto_0

    .line 338
    :catch_1
    move-exception v1

    .line 339
    .local v1, e:Ljava/security/cert/CertStoreException;
    new-instance v4, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    .end local v4           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const-string v7, "Exception searching in X.509 CRL store."

    invoke-direct {v4, v7, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v4       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_0

    .line 344
    .end local v1           #e:Ljava/security/cert/CertStoreException;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #store:Ljava/security/cert/CertStore;
    :cond_1
    if-nez v2, :cond_2

    if-eqz v4, :cond_2

    .line 345
    throw v4

    .line 347
    :cond_2
    return-object v0
.end method

.method protected static findCertificates(Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .parameter "certSelect"
    .parameter "certStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 641
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v1, certs:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 644
    .local v3, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 645
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 647
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Lmyorg/bouncycastle/x509/X509Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 648
    check-cast v0, Lmyorg/bouncycastle/x509/X509Store;

    .line 650
    .local v0, certStore:Lmyorg/bouncycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/x509/X509Store;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lmyorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v2

    .line 652
    .local v2, e:Lmyorg/bouncycastle/util/StoreException;
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 659
    .end local v0           #certStore:Lmyorg/bouncycastle/x509/X509Store;
    .end local v2           #e:Lmyorg/bouncycastle/util/StoreException;
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method protected static findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .parameter "certSelect"
    .parameter "certStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 610
    .local v1, certs:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 612
    .local v3, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 613
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 615
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Lmyorg/bouncycastle/x509/X509Store;

    if-eqz v5, :cond_0

    move-object v0, v4

    .line 616
    check-cast v0, Lmyorg/bouncycastle/x509/X509Store;

    .line 618
    .local v0, certStore:Lmyorg/bouncycastle/x509/X509Store;
    :try_start_0
    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/x509/X509Store;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lmyorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 619
    :catch_0
    move-exception v2

    .line 620
    .local v2, e:Lmyorg/bouncycastle/util/StoreException;
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v0           #certStore:Lmyorg/bouncycastle/x509/X509Store;
    .end local v2           #e:Lmyorg/bouncycastle/util/StoreException;
    :cond_0
    move-object v0, v4

    .line 626
    check-cast v0, Ljava/security/cert/CertStore;

    .line 629
    .local v0, certStore:Ljava/security/cert/CertStore;
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 630
    :catch_1
    move-exception v2

    .line 631
    .local v2, e:Ljava/security/cert/CertStoreException;
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from certificate store."

    invoke-direct {v5, v6, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 636
    .end local v0           #certStore:Ljava/security/cert/CertStore;
    .end local v2           #e:Ljava/security/cert/CertStoreException;
    .end local v4           #obj:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method protected static findIssuerCerts(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1130
    new-instance v0, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 1131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1133
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1147
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1149
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1158
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1162
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1153
    :catch_1
    move-exception v0

    .line 1154
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer certificate cannot be searched."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1164
    :cond_0
    return-object v1
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 10
    .parameter "cert"
    .parameter "trustAnchors"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v6, 0x0

    .line 145
    .local v6, trust:Ljava/security/cert/TrustAnchor;
    const/4 v7, 0x0

    .line 146
    .local v7, trustPublicKey:Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 148
    .local v4, invalidKeyEx:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 149
    .local v2, certSelectX509:Ljava/security/cert/X509CertSelector;
    invoke-static {p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 152
    .local v1, certIssuer:Ljavax/security/auth/x500/X500Principal;
    :try_start_0
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 158
    .local v5, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    .line 159
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #trust:Ljava/security/cert/TrustAnchor;
    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 160
    .restart local v6       #trust:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 161
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 181
    :goto_1
    if-eqz v7, :cond_0

    .line 183
    :try_start_1
    invoke-static {p0, v7, p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, ex:Ljava/lang/Exception;
    move-object v4, v3

    .line 186
    const/4 v6, 0x0

    .line 187
    goto :goto_0

    .line 153
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v5           #iter:Ljava/util/Iterator;
    :catch_1
    move-exception v3

    .line 154
    .local v3, ex:Ljava/io/IOException;
    new-instance v8, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "Cannot set subject search criteria for trust anchor."

    invoke-direct {v8, v9, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 164
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v5       #iter:Ljava/util/Iterator;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 168
    :try_start_2
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, caName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 170
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    goto :goto_1

    .line 172
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 174
    .end local v0           #caName:Ljavax/security/auth/x500/X500Principal;
    :catch_2
    move-exception v3

    .line 175
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .line 176
    goto :goto_1

    .line 178
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 191
    :cond_5
    if-nez v6, :cond_6

    if-eqz v4, :cond_6

    .line 192
    new-instance v8, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v9, "TrustAnchor found but certificate validation failed."

    invoke-direct {v8, v9, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 196
    :cond_6
    return-object v6
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 289
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 291
    .local v2, info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 292
    .end local v0           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #info:Lmyorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Subject public key cannot be decoded."

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .parameter "dp"
    .parameter "issuerPrincipals"
    .parameter "selector"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 714
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 716
    .local v3, issuers:Ljava/util/List;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 717
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 719
    .local v2, genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_3

    .line 720
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 722
    :try_start_0
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, v2, v5

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v6, v7, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 736
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_1
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v6

    if-nez v6, :cond_2

    .line 737
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 741
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 742
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 791
    .end local v4           #it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 792
    .restart local v4       #it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 794
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 795
    :catch_1
    move-exception v1

    .line 796
    .local v1, ex:Ljava/io/IOException;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot decode CRL issuer information."

    invoke-direct {v6, v7, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 799
    .end local v1           #ex:Ljava/io/IOException;
    :cond_4
    return-void
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V
    .locals 9
    .parameter "validDate"
    .parameter "crl"
    .parameter "cert"
    .parameter "certStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 812
    const/4 v0, 0x0

    .line 814
    .local v0, bcCRL:Lmyorg/bouncycastle/jce/provider/X509CRLObject;
    :try_start_0
    new-instance v0, Lmyorg/bouncycastle/jce/provider/X509CRLObject;

    .end local v0           #bcCRL:Lmyorg/bouncycastle/jce/provider/X509CRLObject;
    new-instance v6, Lmyorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v6, v5}, Lmyorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v6}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lmyorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    .restart local v0       #bcCRL:Lmyorg/bouncycastle/jce/provider/X509CRLObject;
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmyorg/bouncycastle/jce/provider/X509CRLObject;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;

    .line 824
    .local v1, crl_entry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    if-eqz v1, :cond_3

    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 827
    :cond_0
    const/4 v4, 0x0

    .line 828
    .local v4, reasonCode:Lmyorg/bouncycastle/asn1/DEREnumerated;
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 830
    :try_start_1
    sget-object v5, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-static {v5}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DEREnumerated;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 840
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 847
    :cond_2
    if-eqz v4, :cond_4

    .line 848
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {p3, v5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 854
    :goto_1
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;->getRevocationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p3, v5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 857
    .end local v4           #reasonCode:Lmyorg/bouncycastle/asn1/DEREnumerated;
    :cond_3
    return-void

    .line 816
    .end local v0           #bcCRL:Lmyorg/bouncycastle/jce/provider/X509CRLObject;
    .end local v1           #crl_entry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    :catch_0
    move-exception v3

    .line 817
    .local v3, exception:Ljava/lang/Exception;
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Bouncy Castle X509CRLObject could not be created."

    invoke-direct {v5, v6, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 832
    .end local v3           #exception:Ljava/lang/Exception;
    .restart local v0       #bcCRL:Lmyorg/bouncycastle/jce/provider/X509CRLObject;
    .restart local v1       #crl_entry:Lmyorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .restart local v4       #reasonCode:Lmyorg/bouncycastle/asn1/DEREnumerated;
    :catch_1
    move-exception v2

    .line 833
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v5, v6, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 852
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_1
.end method

.method protected static getCompleteCRLs(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;
    .locals 11
    .parameter "dp"
    .parameter "cert"
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 964
    new-instance v3, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v3}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 966
    .local v3, crlselect:Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 967
    .local v5, issuers:Ljava/util/Set;
    instance-of v7, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_1

    .line 968
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    move-object v7, v0

    invoke-interface {v7}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 972
    :goto_0
    invoke-static {p0, v5, v3, p3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v5           #issuers:Ljava/util/Set;
    :goto_1
    instance-of v7, p1, Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_2

    move-object v7, p1

    .line 978
    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 983
    :cond_0
    :goto_2
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 984
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 989
    :goto_3
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setCompleteCRLEnabled(Z)V

    .line 991
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 993
    .local v2, crls:Ljava/util/Set;
    :try_start_1
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 994
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 996
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1000
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1001
    instance-of v7, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_4

    move-object v1, p1

    .line 1002
    check-cast v1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 1004
    .local v1, aCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 970
    .end local v1           #aCert:Lmyorg/bouncycastle/x509/X509AttributeCertificate;
    .end local v2           #crls:Ljava/util/Set;
    .restart local v5       #issuers:Ljava/util/Set;
    :cond_1
    :try_start_2
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 974
    .end local v5           #issuers:Ljava/util/Set;
    :catch_0
    move-exception v4

    .line 975
    .local v4, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not get issuer information from distribution point."

    invoke-direct {v7, v8, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 979
    .end local v4           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_2
    instance-of v7, p1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    if-eqz v7, :cond_0

    move-object v7, p1

    .line 980
    check-cast v7, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setAttrCertificateChecking(Lmyorg/bouncycastle/x509/X509AttributeCertificate;)V

    goto/16 :goto_2

    .line 986
    :cond_3
    invoke-virtual {v3, p2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    goto/16 :goto_3

    .line 997
    .restart local v2       #crls:Ljava/util/Set;
    :catch_1
    move-exception v4

    .line 998
    .restart local v4       #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Could not search for CRLs."

    invoke-direct {v7, v8, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .end local v4           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    move-object v6, p1

    .line 1007
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1009
    .local v6, xCert:Ljava/security/cert/X509Certificate;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No CRLs found for issuer \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1013
    .end local v6           #xCert:Ljava/security/cert/X509Certificate;
    :cond_5
    return-object v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 11
    .parameter "currentDate"
    .parameter "paramsPKIX"
    .parameter "completeCRL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 872
    new-instance v2, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v2}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    .line 874
    .local v2, deltaSelect:Lmyorg/bouncycastle/x509/X509CRLStoreSelector;
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 875
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    .line 882
    :goto_0
    :try_start_0
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :goto_1
    const/4 v0, 0x0

    .line 890
    .local v0, completeCRLNumber:Ljava/math/BigInteger;
    :try_start_1
    sget-object v9, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {p2, v9}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 892
    .local v3, derObject:Lmyorg/bouncycastle/asn1/DERObject;
    if-eqz v3, :cond_0

    .line 893
    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/CRLNumber;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 900
    :cond_0
    const/4 v5, 0x0

    .line 902
    .local v5, idp:[B
    :try_start_2
    sget-object v9, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 910
    if-nez v0, :cond_3

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v2, v9}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 913
    invoke-virtual {v2, v5}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPoint([B)V

    .line 914
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setIssuingDistributionPointEnabled(Z)V

    .line 917
    invoke-virtual {v2, v0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 919
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 922
    .local v8, temp:Ljava/util/Set;
    :try_start_3
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 924
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 925
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Lmyorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 930
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 932
    .local v7, result:Ljava/util/Set;
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, it:Ljava/util/Iterator;
    :cond_1
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 933
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 935
    .local v1, crl:Ljava/security/cert/X509CRL;
    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 936
    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 877
    .end local v0           #completeCRLNumber:Ljava/math/BigInteger;
    .end local v1           #crl:Ljava/security/cert/X509CRL;
    .end local v3           #derObject:Lmyorg/bouncycastle/asn1/DERObject;
    .end local v5           #idp:[B
    .end local v6           #it:Ljava/util/Iterator;
    .end local v7           #result:Ljava/util/Set;
    .end local v8           #temp:Ljava/util/Set;
    :cond_2
    invoke-virtual {v2, p0}, Lmyorg/bouncycastle/x509/X509CRLStoreSelector;->setDateAndTime(Ljava/util/Date;)V

    goto :goto_0

    .line 884
    :catch_0
    move-exception v4

    .line 885
    .local v4, e:Ljava/io/IOException;
    new-instance v9, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot extract issuer from CRL."

    invoke-direct {v9, v10, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 895
    .end local v4           #e:Ljava/io/IOException;
    .restart local v0       #completeCRLNumber:Ljava/math/BigInteger;
    :catch_1
    move-exception v4

    .line 896
    .local v4, e:Ljava/lang/Exception;
    new-instance v9, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "CRL number extension could not be extracted from CRL."

    invoke-direct {v9, v10, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 903
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #derObject:Lmyorg/bouncycastle/asn1/DERObject;
    .restart local v5       #idp:[B
    :catch_2
    move-exception v4

    .line 904
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v9, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Issuing distribution point extension value could not be read."

    invoke-direct {v9, v10, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 910
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_2

    .line 926
    .restart local v8       #temp:Ljava/util/Set;
    :catch_3
    move-exception v4

    .line 927
    .local v4, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v9, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Could not search for delta CRLs."

    invoke-direct {v9, v10, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 940
    .end local v4           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6       #it:Ljava/util/Iterator;
    .restart local v7       #result:Ljava/util/Set;
    :cond_4
    return-object v7
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .parameter "cert"

    .prologue
    .line 224
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 225
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .end local p0
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    goto :goto_0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 2
    .parameter "ext"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 259
    .local v0, bytes:[B
    if-nez v0, :cond_0

    .line 260
    const/4 v1, 0x0

    .line 263
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p1, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    goto :goto_0
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .parameter "crl"

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1085
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1086
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 1087
    instance-of v1, v0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v1, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-object v0

    .line 1090
    :cond_1
    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    .line 1091
    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1094
    add-int/lit8 v1, p1, 0x1

    move v2, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 1095
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1096
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1097
    instance-of v3, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v3, :cond_2

    .line 1098
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_2
    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 1102
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1094
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 1105
    :cond_3
    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 1106
    new-instance v2, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v0, v3, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1109
    :try_start_0
    const-string v0, "DSA"

    const-string v1, "myBC"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1111
    :catch_0
    move-exception v0

    .line 1112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1115
    :cond_4
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "DSA parameters cannot be inherited from previous certificate."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getObject(Ljava/lang/String;[B)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 6
    .parameter "oid"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 269
    .local v0, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .line 271
    .local v2, octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    if-eqz v2, :cond_0

    .line 272
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 274
    .restart local v0       #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 275
    .end local v0           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #octs:Lmyorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v1

    .line 276
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lmyorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .parameter "qualifiers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 356
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 358
    .local v4, pq:Ljava/util/Set;
    if-nez p0, :cond_1

    .line 380
    :cond_0
    return-object v4

    .line 362
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 363
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 365
    .local v0, aOut:Lmyorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 367
    .local v2, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    :try_start_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmyorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 371
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 372
    :catch_0
    move-exception v3

    .line 373
    .local v3, ex:Ljava/io/IOException;
    new-instance v5, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v3}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .parameter "cert"

    .prologue
    .line 802
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 803
    check-cast p0, Ljava/security/cert/X509Certificate;

    .end local p0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    .line 805
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .end local p0
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .parameter "cert"

    .prologue
    .line 242
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .parameter "paramsPKIX"
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1020
    if-gtz p2, :cond_0

    .line 1021
    invoke-static {p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    .line 1058
    :goto_0
    return-object v3

    .line 1024
    :cond_0
    add-int/lit8 v3, p2, -0x1

    if-nez v3, :cond_3

    .line 1025
    const/4 v0, 0x0

    .line 1027
    .local v0, dateOfCertgen:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lmyorg/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    .line 1031
    .local v2, extBytes:[B
    if-eqz v2, :cond_1

    .line 1032
    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERGeneralizedTime;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1042
    :cond_1
    if-eqz v0, :cond_2

    .line 1044
    :try_start_1
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    goto :goto_0

    .line 1035
    .end local v2           #extBytes:[B
    :catch_0
    move-exception v1

    .line 1036
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1038
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1039
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date of cert gen extension could not be read."

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1045
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #extBytes:[B
    :catch_2
    move-exception v1

    .line 1046
    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1050
    .end local v1           #e:Ljava/text/ParseException;
    :cond_2
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1053
    .end local v0           #dateOfCertgen:Lmyorg/bouncycastle/asn1/DERGeneralizedTime;
    .end local v2           #extBytes:[B
    :cond_3
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v3

    goto :goto_0

    .line 1058
    :cond_4
    invoke-static {p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v3

    goto :goto_0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 1
    .parameter "paramsPKIX"

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 234
    .local v0, validDate:Ljava/util/Date;
    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/Date;

    .end local v0           #validDate:Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 238
    .restart local v0       #validDate:Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .parameter "policySet"

    .prologue
    .line 554
    if-eqz p0, :cond_0

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .parameter "crl"

    .prologue
    .line 944
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 946
    .local v0, critical:Ljava/util/Set;
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .parameter "cert"

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z
    .locals 11
    .parameter "index"
    .parameter "policyNodes"
    .parameter "pOid"
    .parameter "pq"

    .prologue
    const/4 v7, 0x0

    .line 419
    add-int/lit8 v1, p0, -0x1

    aget-object v10, p1, v1

    .line 421
    .local v10, policyNodeVec:Ljava/util/List;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 422
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 423
    .local v4, node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 425
    .local v8, expectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 427
    .local v3, childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 431
    .local v0, child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 432
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    const/4 v7, 0x1

    .line 438
    .end local v0           #child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #childExpectedPolicies:Ljava/util/Set;
    .end local v4           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #expectedPolicies:Ljava/util/Set;
    :cond_0
    return v7

    .line 421
    .restart local v4       #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #expectedPolicies:Ljava/util/Set;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    .locals 10
    .parameter "index"
    .parameter "policyNodes"
    .parameter "_poid"
    .parameter "_pq"

    .prologue
    .line 443
    add-int/lit8 v1, p0, -0x1

    aget-object v9, p1, v1

    .line 445
    .local v9, policyNodeVec:Ljava/util/List;
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 446
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 448
    .local v4, _node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 450
    .local v3, _childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 454
    .local v0, _child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 455
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    .end local v0           #_child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #_childExpectedPolicies:Ljava/util/Set;
    .end local v4           #_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    return-void

    .line 445
    .restart local v4       #_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method protected static removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-virtual {p2}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 387
    .local v0, _parent:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_0

    move-object p0, v2

    .line 401
    .end local p0
    :goto_0
    return-object p0

    .line 391
    .restart local p0
    :cond_0
    if-nez v0, :cond_2

    .line 392
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 393
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v1

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object p0, v2

    .line 396
    goto :goto_0

    .line 398
    .end local v1           #j:I
    :cond_2
    invoke-virtual {v0, p2}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 399
    invoke-static {p1, p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 3
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    .line 406
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    invoke-virtual {p1}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 410
    .local v1, _iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 412
    .local v0, _child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_0

    .line 415
    .end local v0           #_child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1           #_iter:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .parameter "cert"
    .parameter "publicKey"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1169
    if-nez p2, :cond_0

    .line 1170
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1174
    :goto_0
    return-void

    .line 1172
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method
