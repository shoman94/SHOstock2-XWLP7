.class public Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


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
    .line 320
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 322
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 324
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 326
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 329
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->FreshestCRL:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 331
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 333
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 335
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 337
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 340
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 343
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 345
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 348
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 350
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 1865
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

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1425
    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1426
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1427
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1438
    :cond_0
    invoke-static {p0, p2, v9, p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v3

    .line 1439
    const/4 v2, 0x0

    .line 1440
    const/4 v1, 0x0

    .line 1441
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, v1

    move v8, v2

    .line 1444
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p7 .. p7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1446
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 1449
    invoke-static {v1, p0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/asn1/x509/DistributionPoint;)Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v11

    .line 1457
    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, p1

    move-object/from16 v6, p8

    .line 1462
    invoke-static/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1465
    invoke-static {v1, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v3

    .line 1467
    const/4 v2, 0x0

    .line 1469
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1471
    invoke-static {v9, p1, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v2

    .line 1475
    invoke-static {v2, v3}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v2

    .line 1491
    :cond_2
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 1497
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 1498
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1551
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1553
    goto :goto_0

    .line 1502
    :cond_3
    invoke-static {p0, p2, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1505
    invoke-static {p0, p2, v1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1508
    invoke-static {v2, v1, p1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1511
    move-object/from16 v0, p6

    invoke-static {p3, v2, p2, v0, p1}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 1515
    move-object/from16 v0, p6

    invoke-static {p3, v1, p2, v0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V

    .line 1518
    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 1519
    const/16 v3, 0xb

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1523
    :cond_4
    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1525
    invoke-virtual {v1}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 1526
    if-eqz v1, :cond_5

    .line 1527
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1528
    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1529
    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1531
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1532
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL contains unsupported critical extensions."

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1537
    :cond_5
    if-eqz v2, :cond_6

    .line 1538
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 1539
    if-eqz v1, :cond_6

    .line 1540
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1541
    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1542
    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1543
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1544
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Delta CRL contains unsupported critical extension."

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :cond_6
    const/4 v1, 0x1

    move v8, v1

    .line 1553
    goto/16 :goto_0

    .line 1555
    :cond_7
    if-nez v8, :cond_8

    .line 1556
    throw v7

    .line 1558
    :cond_8
    return-void
.end method

.method protected static checkCRLs(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1577
    const/4 v10, 0x0

    .line 1580
    :try_start_0
    sget-object v0, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-static {p1, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1586
    :try_start_1
    invoke-static {v0, p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1593
    new-instance v6, Lmyorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1594
    new-instance v7, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1596
    const/4 v9, 0x0

    .line 1598
    if-eqz v0, :cond_0

    .line 1601
    :try_start_2
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 1605
    if-eqz v12, :cond_0

    .line 1606
    const/4 v0, 0x0

    move v11, v0

    .line 1608
    :goto_0
    array-length v0, v12

    if-ge v11, v0, :cond_0

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 1612
    :try_start_3
    aget-object v0, v12, v11

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1614
    const/4 v0, 0x1

    move-object v1, v10

    .line 1608
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v9, v0

    move-object v10, v1

    goto :goto_0

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1588
    :catch_1
    move-exception v0

    .line 1589
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1602
    :catch_2
    move-exception v0

    .line 1603
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1615
    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v9

    .line 1616
    goto :goto_1

    .line 1628
    :cond_0
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1637
    :try_start_4
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v1

    .line 1643
    :try_start_5
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v3, 0x0

    new-instance v4, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v8, 0x4

    invoke-direct {v5, v8, v1}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v3, v4}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lmyorg/bouncycastle/asn1/x509/DistributionPointName;Lmyorg/bouncycastle/asn1/x509/ReasonFlags;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1646
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .line 1648
    invoke-static/range {v0 .. v8}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1650
    const/4 v9, 0x1

    .line 1656
    :cond_1
    :goto_2
    if-nez v9, :cond_3

    .line 1657
    instance-of v0, v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v0, :cond_2

    .line 1658
    throw v10

    .line 1639
    :catch_4
    move-exception v0

    .line 1640
    :try_start_6
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1651
    :catch_5
    move-exception v0

    move-object v10, v0

    .line 1652
    goto :goto_2

    .line 1661
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "No valid CRL found."

    invoke-direct {v0, v1, v10}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1663
    :cond_3
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate revocation after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    new-instance v1, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1668
    :cond_4
    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 1669
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1671
    :cond_5
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 1672
    new-instance v0, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Certificate status could not be determined."

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_6
    return-void
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 34
    .parameter "certPath"
    .parameter "index"
    .parameter "policyNodes"
    .parameter "validPolicyTree"
    .parameter "policyMapping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 719
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 720
    .local v12, certs:Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 721
    .local v11, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    .line 723
    .local v23, n:I
    sub-int v4, v23, p1

    .line 726
    .local v4, i:I
    const/16 v29, 0x0

    .line 728
    .local v29, pm:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    .line 734
    move-object/from16 v10, p3

    .line 735
    .local v10, _validPolicyTree:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v29, :cond_d

    .line 736
    move-object/from16 v22, v29

    .line 737
    .local v22, mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 738
    .local v20, m_idp:Ljava/util/Map;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 740
    .local v31, s_idp:Ljava/util/Set;
    const/16 v17, 0x0

    .local v17, j:I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_1

    .line 741
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v21

    check-cast v21, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 742
    .local v21, mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 743
    .local v8, id_p:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v32

    .line 746
    .local v32, sd_p:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 747
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 748
    .local v33, tmp:Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 730
    .end local v8           #id_p:Ljava/lang/String;
    .end local v10           #_validPolicyTree:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v17           #j:I
    .end local v20           #m_idp:Ljava/util/Map;
    .end local v21           #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v22           #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v31           #s_idp:Ljava/util/Set;
    .end local v32           #sd_p:Ljava/lang/String;
    .end local v33           #tmp:Ljava/util/Set;
    :catch_0
    move-exception v14

    .line 731
    .local v14, ex:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 752
    .end local v14           #ex:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8       #id_p:Ljava/lang/String;
    .restart local v10       #_validPolicyTree:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17       #j:I
    .restart local v20       #m_idp:Ljava/util/Map;
    .restart local v21       #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v22       #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v31       #s_idp:Ljava/util/Set;
    .restart local v32       #sd_p:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/Set;

    .line 753
    .restart local v33       #tmp:Ljava/util/Set;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 757
    .end local v8           #id_p:Ljava/lang/String;
    .end local v21           #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v32           #sd_p:Ljava/lang/String;
    .end local v33           #tmp:Ljava/util/Set;
    :cond_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 758
    .local v16, it_idp:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 759
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 764
    .restart local v8       #id_p:Ljava/lang/String;
    if-lez p4, :cond_9

    .line 765
    const/4 v15, 0x0

    .line 766
    .local v15, idp_found:Z
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 767
    .local v27, nodes_i:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 768
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 769
    .local v24, node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 770
    const/4 v15, 0x1

    .line 771
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move-object/from16 v0, v24

    iput-object v3, v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 776
    .end local v24           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4
    if-nez v15, :cond_2

    .line 777
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 778
    :cond_5
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 779
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 780
    .restart local v24       #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 781
    const/4 v7, 0x0

    .line 782
    .local v7, pq:Ljava/util/Set;
    const/16 v30, 0x0

    .line 784
    .local v30, policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v3, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v30

    .end local v30           #policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    check-cast v30, Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 792
    .restart local v30       #policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v30 .. v30}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    .line 793
    .local v13, e:Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 794
    const/16 v28, 0x0

    .line 796
    .local v28, pinfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    .line 802
    const-string v3, "2.5.29.32.0"

    invoke-virtual/range {v28 .. v28}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 805
    :try_start_3
    invoke-virtual/range {v28 .. v28}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lmyorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 816
    .end local v28           #pinfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    const/4 v9, 0x0

    .line 817
    .local v9, ci:Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 818
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    sget-object v5, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 822
    :cond_8
    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 823
    .local v6, p_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    new-instance v2, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct/range {v2 .. v9}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 827
    .local v2, c_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 828
    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 787
    .end local v2           #c_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6           #p_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9           #ci:Z
    .end local v13           #e:Ljava/util/Enumeration;
    .end local v30           #policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v13

    .line 788
    .local v13, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Certificate policies extension could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v13, v0, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 797
    .local v13, e:Ljava/util/Enumeration;
    .restart local v28       #pinfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v30       #policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v14

    .line 798
    .local v14, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Policy information could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 807
    .end local v14           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 809
    .local v14, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy qualifier info set could not be decoded."

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v5, v14, v0, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 838
    .end local v7           #pq:Ljava/util/Set;
    .end local v13           #e:Ljava/util/Enumeration;
    .end local v14           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v15           #idp_found:Z
    .end local v24           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27           #nodes_i:Ljava/util/Iterator;
    .end local v28           #pinfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v30           #policies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_9
    if-gtz p4, :cond_2

    .line 839
    aget-object v3, p2, v4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 840
    .restart local v27       #nodes_i:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 841
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 842
    .restart local v24       #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 843
    invoke-virtual/range {v24 .. v24}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 844
    .restart local v6       #p_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 845
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->remove()V

    .line 846
    add-int/lit8 v18, v4, -0x1

    .local v18, k:I
    :goto_3
    if-ltz v18, :cond_a

    .line 847
    aget-object v26, p2, v18

    .line 848
    .local v26, nodes:Ljava/util/List;
    const/16 v19, 0x0

    .local v19, l:I
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    .line 849
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 850
    .local v25, node2:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v25 .. v25}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v3

    if-nez v3, :cond_c

    .line 851
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-static {v10, v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    .line 854
    if-nez v10, :cond_c

    .line 846
    .end local v25           #node2:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    add-int/lit8 v18, v18, -0x1

    goto :goto_3

    .line 848
    .restart local v25       #node2:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 865
    .end local v6           #p_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #id_p:Ljava/lang/String;
    .end local v16           #it_idp:Ljava/util/Iterator;
    .end local v17           #j:I
    .end local v18           #k:I
    .end local v19           #l:I
    .end local v20           #m_idp:Ljava/util/Map;
    .end local v22           #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v24           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v25           #node2:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26           #nodes:Ljava/util/List;
    .end local v27           #nodes_i:Ljava/util/Iterator;
    .end local v31           #s_idp:Ljava/util/Set;
    :cond_d
    return-object v10
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 13
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 870
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 871
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 876
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 878
    .local v8, pm:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v10, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v10}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 884
    if-eqz v8, :cond_2

    .line 885
    move-object v7, v8

    .line 887
    .local v7, mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 888
    const/4 v4, 0x0

    .line 889
    .local v4, issuerDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v9, 0x0

    .line 891
    .local v9, subjectDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_start_1
    invoke-virtual {v7, v5}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 893
    .local v6, mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    .line 894
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 901
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 903
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 880
    .end local v4           #issuerDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_0
    move-exception v3

    .line 881
    .local v3, ex:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension could not be decoded."

    invoke-direct {v10, v11, v3, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 895
    .end local v3           #ex:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #issuerDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v5       #j:I
    .restart local v7       #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v9       #subjectDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_1
    move-exception v2

    .line 896
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Policy mappings extension contents could not be decoded."

    invoke-direct {v10, v11, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 907
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 909
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "SubjectDomainPolicy is anyPolicy,"

    invoke-direct {v10, v11, v12, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 887
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 914
    .end local v4           #issuerDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v5           #j:I
    .end local v6           #mapping:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7           #mappings:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #subjectDomainPolicy:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2
    return-void
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1351
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1355
    const/4 v1, 0x0

    .line 1357
    :try_start_0
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 1359
    if-eqz v2, :cond_2

    .line 1360
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/NameConstraints;

    invoke-direct {v0, v2}, Lmyorg/bouncycastle/asn1/x509/NameConstraints;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1366
    :goto_0
    if-eqz v0, :cond_1

    .line 1371
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 1372
    if-eqz v1, :cond_0

    .line 1374
    :try_start_1
    invoke-virtual {p2, v1}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1385
    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 1386
    if-eqz v0, :cond_1

    .line 1387
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1389
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1390
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v1

    .line 1391
    invoke-virtual {p2, v1}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lmyorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1362
    :catch_1
    move-exception v0

    .line 1363
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Name constraints extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1375
    :catch_2
    move-exception v0

    .line 1376
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1400
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter "certPath"
    .parameter "index"
    .parameter "explicitPolicy"

    .prologue
    .line 1815
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1816
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1820
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1824
    if-eqz p2, :cond_0

    .line 1825
    add-int/lit8 p2, p2, -0x1

    .line 1828
    .end local p2
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter "certPath"
    .parameter "index"
    .parameter "policyMapping"

    .prologue
    .line 1832
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1833
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1837
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1841
    if-eqz p2, :cond_0

    .line 1842
    add-int/lit8 p2, p2, -0x1

    .line 1845
    .end local p2
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter "certPath"
    .parameter "index"
    .parameter "inhibitAnyPolicy"

    .prologue
    .line 1849
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 1850
    .local v1, certs:Ljava/util/List;
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1854
    .local v0, cert:Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1858
    if-eqz p2, :cond_0

    .line 1859
    add-int/lit8 p2, p2, -0x1

    .line 1862
    .end local p2
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1266
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1272
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_1

    .line 1282
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1284
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1287
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1289
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    if-nez v2, :cond_0

    .line 1290
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1291
    if-ge v0, p2, :cond_1

    move p2, v0

    .line 1303
    :cond_1
    return p2

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1296
    :catch_1
    move-exception v0

    .line 1297
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1308
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1309
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1315
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1324
    if-eqz v0, :cond_1

    .line 1325
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1327
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1329
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 1331
    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1332
    invoke-static {v1}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1333
    if-ge v0, p2, :cond_1

    move p2, v0

    .line 1345
    :cond_1
    return p2

    .line 1317
    :catch_0
    move-exception v0

    .line 1318
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1338
    :catch_1
    move-exception v0

    .line 1339
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1678
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1679
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1685
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1692
    if-eqz v0, :cond_0

    .line 1693
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 1695
    if-ge v0, p2, :cond_0

    move p2, v0

    .line 1699
    :cond_0
    return p2

    .line 1687
    :catch_0
    move-exception v0

    .line 1688
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1704
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1705
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1711
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1719
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1722
    :cond_0
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_1
    return-void
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1729
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1733
    invoke-static {v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1734
    if-gtz p2, :cond_0

    .line 1735
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Max path length not greater than zero"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1739
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 1741
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1746
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1747
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1754
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1760
    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 1763
    if-eqz v0, :cond_0

    .line 1764
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 1766
    if-ge v0, p2, :cond_0

    move p2, v0

    .line 1771
    :cond_0
    return p2

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1776
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1777
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1782
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 1784
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 1785
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1789
    :cond_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1793
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1794
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1800
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1801
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1804
    :catch_0
    move-exception v0

    .line 1805
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1808
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1809
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Certificate has unsupported critical extension."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1812
    :cond_1
    return-void
.end method

.method protected static processCRLB1(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 248
    sget-object v7, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v7}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    .line 250
    .local v2, idp:Lmyorg/bouncycastle/asn1/DERObject;
    const/4 v3, 0x0

    .line 251
    .local v3, isIndirect:Z
    if-eqz v2, :cond_0

    .line 252
    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    const/4 v3, 0x1

    .line 256
    :cond_0
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v4

    .line 258
    .local v4, issuerBytes:[B
    const/4 v6, 0x0

    .line 259
    .local v6, matchIssuer:Z
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 260
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 261
    .local v1, genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    .line 262
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 264
    :try_start_0
    aget-object v7, v1, v5

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-interface {v7}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v7}, Lmyorg/bouncycastle/asn1/DERObject;->getEncoded()[B

    move-result-object v7

    invoke-static {v7, v4}, Lmyorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    const/4 v6, 0x1

    .line 261
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Ljava/io/IOException;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 275
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 276
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 279
    :cond_3
    if-nez v6, :cond_5

    .line 280
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 284
    .end local v1           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_4
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 286
    const/4 v6, 0x1

    .line 289
    :cond_5
    if-nez v6, :cond_6

    .line 290
    new-instance v7, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v7, v8}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 292
    :cond_6
    return-void
.end method

.method protected static processCRLB2(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 14
    .parameter "dp"
    .parameter "cert"
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, idp:Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v10, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 107
    if-eqz v5, :cond_11

    .line 108
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 110
    invoke-static {v5}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 112
    .local v2, dpName:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v8, names:Ljava/util/List;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_0

    .line 115
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 116
    .local v4, genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    array-length v10, v4

    if-ge v6, v10, :cond_0

    .line 117
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    .end local v2           #dpName:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    .end local v8           #names:Ljava/util/List;
    :catch_0
    move-exception v3

    .line 102
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Issuing distribution point extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 120
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #dpName:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v8       #names:Ljava/util/List;
    :cond_0
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_2

    .line 121
    new-instance v9, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v9, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static/range {p2 .. p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 126
    .local v3, e:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 127
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 129
    .end local v3           #e:Ljava/util/Enumeration;
    :catch_1
    move-exception v3

    .line 130
    .local v3, e:Ljava/io/IOException;
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read CRL issuer."

    invoke-direct {v10, v11, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 132
    .local v3, e:Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 133
    new-instance v10, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v9}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-static {v11}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v11

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v9           #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    const/4 v7, 0x0

    .line 138
    .local v7, matches:Z
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 139
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 140
    const/4 v4, 0x0

    .line 141
    .restart local v4       #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-nez v10, :cond_3

    .line 142
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 144
    :cond_3
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v10

    if-ne v10, v12, :cond_6

    .line 145
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 146
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 160
    :goto_2
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_3
    array-length v10, v4

    if-ge v6, v10, :cond_6

    .line 161
    aget-object v10, v4, v6

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralName;->getName()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v10

    invoke-interface {v10}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 163
    .restart local v3       #e:Ljava/util/Enumeration;
    new-instance v9, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 164
    .restart local v9       #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 165
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_4

    .line 148
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #j:I
    .end local v9           #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4
    new-array v4, v12, [Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 150
    const/4 v11, 0x0

    :try_start_2
    new-instance v12, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v13, Lmyorg/bouncycastle/asn1/x509/X509Name;

    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v13, v10}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v12, v13}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    aput-object v12, v4, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 155
    :catch_2
    move-exception v3

    .line 156
    .local v3, e:Ljava/io/IOException;
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Could not read certificate issuer."

    invoke-direct {v10, v11, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 167
    .local v3, e:Ljava/util/Enumeration;
    .restart local v6       #j:I
    .restart local v9       #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_5
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lmyorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 168
    new-instance v10, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v11, Lmyorg/bouncycastle/asn1/x509/X509Name;

    new-instance v12, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v12, v9}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v11, v12}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V

    aput-object v10, v4, v6

    .line 160
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 171
    .end local v3           #e:Ljava/util/Enumeration;
    .end local v6           #j:I
    .end local v9           #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_6
    if-eqz v4, :cond_7

    .line 172
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_5
    array-length v10, v4

    if-ge v6, v10, :cond_7

    .line 173
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 174
    const/4 v7, 0x1

    .line 179
    .end local v6           #j:I
    :cond_7
    if-nez v7, :cond_d

    .line 180
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 172
    .restart local v6       #j:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 188
    .end local v4           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    :cond_9
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    if-nez v10, :cond_a

    .line 189
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 193
    :cond_a
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 194
    .restart local v4       #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .restart local v6       #j:I
    :goto_6
    array-length v10, v4

    if-ge v6, v10, :cond_b

    .line 195
    aget-object v10, v4, v6

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 196
    const/4 v7, 0x1

    .line 200
    :cond_b
    if-nez v7, :cond_d

    .line 201
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 206
    .end local v2           #dpName:Lmyorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v6           #j:I
    .end local v7           #matches:Z
    .end local v8           #names:Ljava/util/List;
    :cond_d
    const/4 v1, 0x0

    .line 208
    .local v1, bc:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Extension;

    move-object v10, v0

    sget-object v11, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v11}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v1

    .line 214
    instance-of v10, p1, Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_10

    .line 216
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 217
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CA Cert CRL only contains user certificates."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 210
    :catch_3
    move-exception v3

    .line 211
    .local v3, e:Ljava/lang/Exception;
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Basic constraints extension could not be decoded."

    invoke-direct {v10, v11, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 221
    .end local v3           #e:Ljava/lang/Exception;
    :cond_e
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v10

    if-nez v10, :cond_10

    .line 222
    :cond_f
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "End CRL only contains CA certificates."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 227
    :cond_10
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 228
    new-instance v10, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v10, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 231
    .end local v1           #bc:Lmyorg/bouncycastle/asn1/x509/BasicConstraints;
    :cond_11
    return-void
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 8
    .parameter "deltaCRL"
    .parameter "completeCRL"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 622
    if-nez p0, :cond_1

    .line 701
    :cond_0
    return-void

    .line 625
    :cond_1
    const/4 v1, 0x0

    .line 627
    .local v1, completeidp:Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v6, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 635
    invoke-virtual {p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 637
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 638
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 630
    :catch_0
    move-exception v4

    .line 631
    .local v4, e:Ljava/lang/Exception;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension could not be decoded."

    invoke-direct {v6, v7, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 642
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    .line 644
    .local v3, deltaidp:Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v6, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 652
    const/4 v5, 0x0

    .line 653
    .local v5, match:Z
    if-nez v1, :cond_4

    .line 654
    if-nez v3, :cond_3

    .line 655
    const/4 v5, 0x1

    .line 662
    :cond_3
    :goto_0
    if-nez v5, :cond_5

    .line 663
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 646
    .end local v5           #match:Z
    :catch_1
    move-exception v4

    .line 647
    .restart local v4       #e:Ljava/lang/Exception;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v6, v7, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 658
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #match:Z
    :cond_4
    invoke-virtual {v1, v3}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 659
    const/4 v5, 0x1

    goto :goto_0

    .line 668
    :cond_5
    const/4 v0, 0x0

    .line 670
    .local v0, completeKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObject;
    :try_start_2
    sget-object v6, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_2
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 678
    const/4 v2, 0x0

    .line 680
    .local v2, deltaKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObject;
    :try_start_3
    sget-object v6, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 688
    if-nez v0, :cond_6

    .line 689
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 672
    .end local v2           #deltaKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_2
    move-exception v4

    .line 673
    .local v4, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v6, v7, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 682
    .end local v4           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2       #deltaKeyIdentifier:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_3
    move-exception v4

    .line 683
    .restart local v4       #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v4}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 692
    .end local v4           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    if-nez v2, :cond_7

    .line 693
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier is null."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 696
    :cond_7
    invoke-virtual {v0, v2}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 697
    new-instance v6, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v6, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/asn1/x509/DistributionPoint;)Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .locals 5
    .parameter "crl"
    .parameter "dp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, idp:Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    new-instance v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    new-instance v3, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v3, v4}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v2, v3}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    .line 314
    :goto_0
    return-object v2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 310
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_2

    .line 311
    sget-object v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    move-object v3, v2

    :goto_1
    if-nez v1, :cond_4

    sget-object v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    :goto_2
    invoke-virtual {v3, v2}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    new-instance v2, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lmyorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v4

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v4

    invoke-direct {v2, v4}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    goto :goto_2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;
    .locals 22
    .parameter "crl"
    .parameter "cert"
    .parameter "defaultCRLSignCert"
    .parameter "defaultCRLSignKey"
    .parameter "paramsPKIX"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 387
    new-instance v13, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v13}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 389
    .local v13, selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    .line 391
    .local v9, issuerPrincipal:[B
    invoke-virtual {v13, v9}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    .line 402
    .local v6, coll:Ljava/util/Collection;
    if-eqz v6, :cond_0

    .line 403
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 405
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 412
    :cond_0
    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 416
    .local v3, cert_it:Ljava/util/Iterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v18, validCerts:Ljava/util/List;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v19, validKeys:Ljava/util/List;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 420
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 426
    .local v16, signingCert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 427
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v3           #cert_it:Ljava/util/Iterator;
    .end local v6           #coll:Ljava/util/Collection;
    .end local v9           #issuerPrincipal:[B
    .end local v16           #signingCert:Ljava/security/cert/X509Certificate;
    .end local v18           #validCerts:Ljava/util/List;
    .end local v19           #validKeys:Ljava/util/List;
    :catch_0
    move-exception v7

    .line 393
    .local v7, e:Ljava/io/IOException;
    new-instance v20, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 408
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #issuerPrincipal:[B
    :catch_1
    move-exception v7

    .line 409
    .local v7, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v20, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Issuer certificate for CRL cannot be searched."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 432
    .end local v7           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3       #cert_it:Ljava/util/Iterator;
    .restart local v6       #coll:Ljava/util/Collection;
    .restart local v16       #signingCert:Ljava/security/cert/X509Certificate;
    .restart local v18       #validCerts:Ljava/util/List;
    .restart local v19       #validKeys:Ljava/util/List;
    :cond_1
    :try_start_2
    const-string v20, "PKIX"

    const-string v21, "myBC"

    invoke-static/range {v20 .. v21}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2

    .line 433
    .local v2, builder:Ljava/security/cert/CertPathBuilder;
    new-instance v14, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v14}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 434
    .end local v13           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .local v14, selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 435
    invoke-virtual/range {p4 .. p4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 436
    .local v17, temp:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 437
    invoke-static/range {v17 .. v17}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 448
    .local v12, params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 449
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 453
    :goto_1
    invoke-virtual {v2, v12}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 454
    .local v4, certs:Ljava/util/List;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v14

    .line 464
    .end local v14           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    goto/16 :goto_0

    .line 451
    .end local v4           #certs:Ljava/util/List;
    .end local v13           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setRevocationEnabled(Z)V
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 456
    .end local v12           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    .end local v17           #temp:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_2
    move-exception v7

    move-object v13, v14

    .line 457
    .end local v2           #builder:Ljava/security/cert/CertPathBuilder;
    .end local v14           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .local v7, e:Ljava/security/cert/CertPathBuilderException;
    .restart local v13       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :goto_2
    new-instance v20, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Internal error."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 458
    .end local v7           #e:Ljava/security/cert/CertPathBuilderException;
    :catch_3
    move-exception v7

    .line 459
    .local v7, e:Ljava/security/cert/CertPathValidatorException;
    :goto_3
    new-instance v20, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Public key of issuer certificate of CRL could not be retrieved."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 461
    .end local v7           #e:Ljava/security/cert/CertPathValidatorException;
    :catch_4
    move-exception v7

    .line 462
    .local v7, e:Ljava/lang/Exception;
    :goto_4
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 466
    .end local v7           #e:Ljava/lang/Exception;
    .end local v16           #signingCert:Ljava/security/cert/X509Certificate;
    :cond_3
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 468
    .local v5, checkKeys:Ljava/util/Set;
    const/4 v11, 0x0

    .line 469
    .local v11, lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_6

    .line 470
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 471
    .local v15, signCert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 473
    .local v10, keyusage:[Z
    if-eqz v10, :cond_5

    array-length v0, v10

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    const/16 v20, 0x6

    aget-boolean v20, v10, v20

    if-nez v20, :cond_5

    .line 474
    :cond_4
    new-instance v11, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    .end local v11           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const-string v20, "Issuer certificate key usage extension does not permit CRL signing."

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v11       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 477
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 481
    .end local v10           #keyusage:[Z
    .end local v15           #signCert:Ljava/security/cert/X509Certificate;
    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_7

    if-nez v11, :cond_7

    .line 482
    new-instance v20, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v21, "Cannot find a valid issuer certificate."

    invoke-direct/range {v20 .. v21}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 484
    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    if-eqz v11, :cond_8

    .line 485
    throw v11

    .line 488
    :cond_8
    return-object v5

    .line 461
    .end local v5           #checkKeys:Ljava/util/Set;
    .end local v8           #i:I
    .end local v11           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v13           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v2       #builder:Ljava/security/cert/CertPathBuilder;
    .restart local v14       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v16       #signingCert:Ljava/security/cert/X509Certificate;
    :catch_5
    move-exception v7

    move-object v13, v14

    .end local v14           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_4

    .line 458
    .end local v13           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v14       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :catch_6
    move-exception v7

    move-object v13, v14

    .end local v14           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    goto :goto_3

    .line 456
    .end local v2           #builder:Ljava/security/cert/CertPathBuilder;
    :catch_7
    move-exception v7

    goto/16 :goto_2
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 6
    .parameter "crl"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v3, 0x0

    .line 493
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 496
    .local v2, key:Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    return-object v2

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    move-object v3, v0

    .line 501
    goto :goto_0

    .line 502
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #key:Ljava/security/PublicKey;
    :cond_0
    new-instance v4, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify CRL."

    invoke-direct {v4, v5, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 6
    .parameter "deltacrls"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v3, 0x0

    .line 508
    .local v3, lastException:Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 511
    .local v0, crl:Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    :goto_1
    return-object v0

    .line 513
    .restart local v0       #crl:Ljava/security/cert/X509CRL;
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Ljava/lang/Exception;
    move-object v3, v1

    .line 516
    goto :goto_0

    .line 518
    .end local v0           #crl:Ljava/security/cert/X509CRL;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_1

    .line 519
    new-instance v4, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot verify delta CRL."

    invoke-direct {v4, v5, v3}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 521
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 1
    .parameter "validDate"
    .parameter "deltacrl"
    .parameter "cert"
    .parameter "certStatus"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p4}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 706
    invoke-static {p0, p1, p2, p3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V

    .line 708
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .parameter "validDate"
    .parameter "completecrl"
    .parameter "cert"
    .parameter "certStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 712
    invoke-virtual {p3}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 713
    invoke-static {p0, p1, p2, p3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V

    .line 715
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1202
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1203
    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1207
    if-nez p4, :cond_0

    .line 1211
    :try_start_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p3, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    :cond_0
    :try_start_1
    invoke-static {p1, p0, p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1238
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    :try_start_2
    invoke-static {p1, p0, p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2

    move-object v0, p1

    move-object v3, p6

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRLs(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;)V
    :try_end_2
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1255
    :cond_1
    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1256
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IssuerName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not match SubjectName("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") of signing certificate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1224
    :catch_1
    move-exception v0

    .line 1225
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1227
    :catch_2
    move-exception v0

    .line 1228
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not validate certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1230
    :catch_3
    move-exception v0

    .line 1231
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1243
    :catch_4
    move-exception v1

    .line 1245
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1246
    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1248
    :goto_0
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v1}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1261
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 21
    .parameter "certPath"
    .parameter "index"
    .parameter "nameConstraintValidator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v7

    .line 952
    .local v7, certs:Ljava/util/List;
    move/from16 v0, p1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 953
    .local v6, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    .line 955
    .local v17, n:I
    sub-int v15, v17, p1

    .line 959
    .local v15, i:I
    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v19

    if-eqz v19, :cond_0

    move/from16 v0, v17

    if-lt v15, v0, :cond_2

    .line 960
    :cond_0
    invoke-static {v6}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 961
    .local v18, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v18 .. v18}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 965
    .local v4, aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_0
    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 973
    .local v8, dns:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 974
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 980
    const/4 v5, 0x0

    .line 982
    .local v5, altName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v19, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v6, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 989
    new-instance v19, Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    sget-object v20, Lmyorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v19 .. v20}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getValues(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;

    move-result-object v12

    .line 990
    .local v12, emails:Ljava/util/Vector;
    invoke-virtual {v12}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 991
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 992
    .local v10, email:Ljava/lang/String;
    new-instance v11, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v11, v0, v10}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 994
    .local v11, emailAsGeneralName:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 995
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v13

    .line 997
    .local v13, ex:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative email failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v13, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 966
    .end local v5           #altName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v8           #dns:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #e:Ljava/util/Enumeration;
    .end local v10           #email:Ljava/lang/String;
    .end local v11           #emailAsGeneralName:Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v12           #emails:Ljava/util/Vector;
    .end local v13           #ex:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :catch_1
    move-exception v9

    .line 967
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Exception extracting subject name when checking subtrees."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 975
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #dns:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v9

    .line 976
    .local v9, e:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 984
    .end local v9           #e:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v5       #altName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v9

    .line 985
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name extension could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1002
    .local v9, e:Ljava/util/Enumeration;
    .restart local v12       #emails:Ljava/util/Vector;
    :cond_1
    if-eqz v5, :cond_2

    .line 1003
    const/4 v14, 0x0

    .line 1005
    .local v14, genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v14

    .line 1011
    const/16 v16, 0x0

    .local v16, j:I
    :goto_1
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1014
    :try_start_5
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 1015
    aget-object v19, v14, v16

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1011
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1006
    .end local v16           #j:I
    :catch_4
    move-exception v9

    .line 1007
    .local v9, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subject alternative name contents could not be decoded."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1016
    .local v9, e:Ljava/util/Enumeration;
    .restart local v16       #j:I
    :catch_5
    move-exception v9

    .line 1017
    .local v9, e:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v19, Ljava/security/cert/CertPathValidatorException;

    const-string v20, "Subtree check for certificate subject alternative name failed."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, p1

    invoke-direct {v0, v1, v9, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v19

    .line 1024
    .end local v4           #aIn:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5           #altName:Lmyorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v8           #dns:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #e:Lmyorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12           #emails:Ljava/util/Vector;
    .end local v14           #genNames:[Lmyorg/bouncycastle/asn1/x509/GeneralName;
    .end local v16           #j:I
    .end local v18           #principal:Ljavax/security/auth/x500/X500Principal;
    :cond_2
    return-void
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 38
    .parameter "certPath"
    .parameter "index"
    .parameter "acceptablePolicies"
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "inhibitAnyPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1029
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v20

    .line 1030
    .local v20, certs:Ljava/util/List;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509Certificate;

    .line 1031
    .local v18, cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v29

    .line 1033
    .local v29, n:I
    sub-int v5, v29, p1

    .line 1038
    .local v5, i:I
    const/16 v19, 0x0

    .line 1040
    .local v19, certPolicies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1047
    if-eqz v19, :cond_11

    if-eqz p3, :cond_11

    .line 1051
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1052
    .local v23, e:Ljava/util/Enumeration;
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1054
    .local v35, pols:Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1055
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1056
    .local v33, pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v34

    .line 1058
    .local v34, pOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v34 .. v34}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v34 .. v34}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1061
    const/16 v36, 0x0

    .line 1063
    .local v36, pq:Ljava/util/Set;
    :try_start_1
    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lmyorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 1071
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v28

    .line 1074
    .local v28, match:Z
    if-nez v28, :cond_0

    .line 1075
    move-object/from16 v0, p4

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-static {v5, v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_0

    .line 1042
    .end local v23           #e:Ljava/util/Enumeration;
    .end local v28           #match:Z
    .end local v33           #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34           #pOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v35           #pols:Ljava/util/Set;
    .end local v36           #pq:Ljava/util/Set;
    :catch_0
    move-exception v23

    .line 1043
    .local v23, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Could not read certificate policies extension from certificate."

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1065
    .local v23, e:Ljava/util/Enumeration;
    .restart local v33       #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v34       #pOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v35       #pols:Ljava/util/Set;
    .restart local v36       #pq:Ljava/util/Set;
    :catch_1
    move-exception v24

    .line 1066
    .local v24, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Policy qualifier info set could not be build."

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v4, v10, v0, v1, v2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1080
    .end local v24           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v33           #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v34           #pOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v36           #pq:Ljava/util/Set;
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "2.5.29.32.0"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1082
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1083
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1102
    :goto_1
    if-gtz p5, :cond_3

    move/from16 v0, v29

    if-ge v5, v0, :cond_d

    invoke-static/range {v18 .. v18}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1104
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v23

    .line 1106
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1107
    invoke-interface/range {v23 .. v23}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v33

    .line 1109
    .restart local v33       #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    const-string v4, "2.5.29.32.0"

    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1111
    invoke-virtual/range {v33 .. v33}, Lmyorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lmyorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8

    .line 1113
    .local v8, _apq:Ljava/util/Set;
    add-int/lit8 v4, v5, -0x1

    aget-object v14, p4, v4

    .line 1115
    .local v14, _nodes:Ljava/util/List;
    const/16 v27, 0x0

    .local v27, k:I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_d

    .line 1116
    move/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1118
    .local v7, _node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1119
    .local v15, _policySetIter:Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1120
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .line 1123
    .local v16, _tmp:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    move-object/from16 v9, v16

    .line 1124
    check-cast v9, Ljava/lang/String;

    .line 1131
    .end local v16           #_tmp:Ljava/lang/Object;
    .local v9, _policy:Ljava/lang/String;
    :goto_4
    const/4 v13, 0x0

    .line 1132
    .local v13, _found:Z
    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v12

    .line 1134
    .local v12, _childrenIter:Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1135
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1137
    .local v11, _child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1138
    const/4 v13, 0x1

    goto :goto_5

    .line 1085
    .end local v7           #_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_apq:Ljava/util/Set;
    .end local v9           #_policy:Ljava/lang/String;
    .end local v11           #_child:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12           #_childrenIter:Ljava/util/Iterator;
    .end local v13           #_found:Z
    .end local v14           #_nodes:Ljava/util/List;
    .end local v15           #_policySetIter:Ljava/util/Iterator;
    .end local v27           #k:I
    .end local v33           #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_7
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1086
    .local v25, it:Ljava/util/Iterator;
    new-instance v37, Ljava/util/HashSet;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashSet;-><init>()V

    .line 1088
    .local v37, t1:Ljava/util/Set;
    :cond_8
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1089
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    .line 1091
    .local v32, o:Ljava/lang/Object;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1092
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1095
    .end local v32           #o:Ljava/lang/Object;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->clear()V

    .line 1096
    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1125
    .end local v25           #it:Ljava/util/Iterator;
    .end local v37           #t1:Ljava/util/Set;
    .restart local v7       #_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #_apq:Ljava/util/Set;
    .restart local v14       #_nodes:Ljava/util/List;
    .restart local v15       #_policySetIter:Ljava/util/Iterator;
    .restart local v16       #_tmp:Ljava/lang/Object;
    .restart local v27       #k:I
    .restart local v33       #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_a
    move-object/from16 v0, v16

    instance-of v4, v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_5

    .line 1126
    check-cast v16, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local v16           #_tmp:Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_policy:Ljava/lang/String;
    goto :goto_4

    .line 1142
    .restart local v12       #_childrenIter:Ljava/util/Iterator;
    .restart local v13       #_found:Z
    :cond_b
    if-nez v13, :cond_5

    .line 1143
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1144
    .local v6, _newChildExpectedPolicies:Ljava/util/Set;
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance v3, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1149
    .local v3, _newChild:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1150
    aget-object v4, p4, v5

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1115
    .end local v3           #_newChild:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6           #_newChildExpectedPolicies:Ljava/util/Set;
    .end local v9           #_policy:Ljava/lang/String;
    .end local v12           #_childrenIter:Ljava/util/Iterator;
    .end local v13           #_found:Z
    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1159
    .end local v7           #_node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_apq:Ljava/util/Set;
    .end local v14           #_nodes:Ljava/util/List;
    .end local v15           #_policySetIter:Ljava/util/Iterator;
    .end local v27           #k:I
    .end local v33           #pInfo:Lmyorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_d
    move-object/from16 v17, p3

    .line 1163
    .local v17, _validPolicyTree:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v26, v5, -0x1

    .local v26, j:I
    :goto_7
    if-ltz v26, :cond_10

    .line 1164
    aget-object v31, p4, v26

    .line 1166
    .local v31, nodes:Ljava/util/List;
    const/16 v27, 0x0

    .restart local v27       #k:I
    :goto_8
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_e

    .line 1167
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1168
    .local v30, node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v30 .. v30}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1169
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v17

    .line 1171
    if-nez v17, :cond_f

    .line 1163
    .end local v30           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    add-int/lit8 v26, v26, -0x1

    goto :goto_7

    .line 1166
    .restart local v30       #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_f
    add-int/lit8 v27, v27, 0x1

    goto :goto_8

    .line 1181
    .end local v27           #k:I
    .end local v30           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31           #nodes:Ljava/util/List;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v22

    .line 1183
    .local v22, criticalExtensionOids:Ljava/util/Set;
    if-eqz v22, :cond_12

    .line 1184
    sget-object v4, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 1187
    .local v21, critical:Z
    aget-object v31, p4, v5

    .line 1188
    .restart local v31       #nodes:Ljava/util/List;
    const/16 v26, 0x0

    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    .line 1189
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1190
    .restart local v30       #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1188
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 1195
    .end local v17           #_validPolicyTree:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21           #critical:Z
    .end local v22           #criticalExtensionOids:Ljava/util/Set;
    .end local v23           #e:Ljava/util/Enumeration;
    .end local v26           #j:I
    .end local v30           #node:Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v31           #nodes:Ljava/util/List;
    .end local v35           #pols:Ljava/util/Set;
    :cond_11
    const/16 v17, 0x0

    :cond_12
    return-object v17
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    .line 930
    .local v2, certs:Ljava/util/List;
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 934
    .local v0, cert:Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 936
    .local v1, certPolicies:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v4, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 943
    if-nez v1, :cond_0

    .line 944
    const/4 p2, 0x0

    .line 946
    :cond_0
    return-object p2

    .line 938
    :catch_0
    move-exception v3

    .line 939
    .local v3, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILmyorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .parameter "certPath"
    .parameter "index"
    .parameter "validPolicyTree"
    .parameter "explicitPolicy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 921
    if-gtz p3, :cond_0

    if-nez p2, :cond_0

    .line 922
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 925
    :cond_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .parameter "explicitPolicy"
    .parameter "cert"

    .prologue
    .line 1875
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1876
    add-int/lit8 p0, p0, -0x1

    .line 1878
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1883
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1884
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1891
    :try_start_0
    sget-object v1, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1897
    if-eqz v0, :cond_1

    .line 1898
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 1900
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1901
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1902
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1905
    :pswitch_0
    :try_start_1
    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1911
    if-nez v0, :cond_0

    .line 1912
    const/4 p2, 0x0

    .line 1918
    :cond_1
    return p2

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints could no be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1906
    :catch_1
    move-exception v0

    .line 1907
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Policy constraints requireExplicitPolicy field could no be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1923
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1924
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1926
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1927
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1930
    :catch_0
    move-exception v0

    .line 1931
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Additional certificate path checker failed."

    invoke-direct {v1, v2, v0, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 1936
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1937
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Certificate has unsupported critical extension"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1940
    :cond_1
    return-void
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 1946
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 1955
    if-nez p5, :cond_2

    .line 1956
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1957
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p3}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1960
    :cond_0
    const/4 p5, 0x0

    .line 2082
    :cond_1
    :goto_0
    return-object p5

    .line 1961
    :cond_2
    invoke-static {p2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1964
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1965
    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1966
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p3}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1969
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1971
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, p4

    if-ge v1, v0, :cond_6

    .line 1972
    aget-object v5, p4, v1

    .line 1974
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1975
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1977
    const-string v6, "2.5.29.32.0"

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1978
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 1979
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1980
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1974
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1971
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1986
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1987
    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1988
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1989
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    .line 1991
    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    .line 1997
    :cond_8
    if-eqz p5, :cond_1

    .line 1998
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, p5

    :goto_5
    if-ltz v3, :cond_16

    .line 1999
    aget-object v4, p4, v3

    .line 2001
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 2002
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2003
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2004
    invoke-static {v2, p4, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 2001
    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1998
    :cond_a
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, v2

    goto :goto_5

    .line 2028
    :cond_b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2030
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    array-length v0, p4

    if-ge v1, v0, :cond_f

    .line 2031
    aget-object v5, p4, v1

    .line 2033
    const/4 v0, 0x0

    move v2, v0

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 2034
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2036
    const-string v6, "2.5.29.32.0"

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2037
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    .line 2038
    :cond_c
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2039
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2040
    const-string v7, "2.5.29.32.0"

    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 2042
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2033
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 2030
    :cond_e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 2052
    :cond_f
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2053
    :cond_10
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2054
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2055
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    .line 2057
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 2058
    invoke-static {p5, p4, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p5

    goto :goto_a

    .line 2066
    :cond_11
    if-eqz p5, :cond_14

    .line 2067
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, p5

    :goto_b
    if-ltz v3, :cond_15

    .line 2068
    aget-object v4, p4, v3

    .line 2070
    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_13

    .line 2071
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2072
    invoke-virtual {v0}, Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v5

    if-nez v5, :cond_12

    .line 2073
    invoke-static {v2, p4, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lmyorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    .line 2070
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 2067
    :cond_13
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v1, v2

    goto :goto_b

    :cond_14
    move-object v1, p5

    :cond_15
    move-object p5, v1

    .line 2080
    goto/16 :goto_0

    :cond_16
    move-object p5, v1

    goto/16 :goto_0
.end method
