.class Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3281CertPathUtilities.java"


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->TargetInformation:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 51
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    .line 53
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 56
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static additionalChecks(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 5
    .parameter "attrCert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getProhibitedACAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, oid:Ljava/lang/String;
    invoke-interface {p0, v1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lmyorg/bouncycastle/x509/X509Attribute;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v1           #oid:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getNecessaryACAttributes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .restart local v1       #oid:Ljava/lang/String;
    invoke-interface {p0, v1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lmyorg/bouncycastle/x509/X509Attribute;

    move-result-object v2

    if-nez v2, :cond_2

    .line 237
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .end local v1           #oid:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    .locals 21
    .parameter "dp"
    .parameter "attrCert"
    .parameter "paramsPKIX"
    .parameter "validDate"
    .parameter "issuerCert"
    .parameter "certStatus"
    .parameter "reasonMask"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 435
    sget-object v5, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 546
    :cond_0
    return-void

    .line 438
    :cond_1
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 439
    .local v12, currentDate:Ljava/util/Date;
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 440
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Validation time is in future."

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/util/Set;

    move-result-object v11

    .line 453
    .local v11, crls:Ljava/util/Set;
    const/16 v20, 0x0

    .line 454
    .local v20, validCrlFound:Z
    const/16 v19, 0x0

    .line 455
    .local v19, lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 458
    .local v10, crl_iter:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {p5 .. p5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_7

    invoke-virtual/range {p6 .. p6}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v5

    if-nez v5, :cond_7

    .line 460
    :try_start_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    .line 463
    .local v4, crl:Ljava/security/cert/X509CRL;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/asn1/x509/DistributionPoint;)Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v16

    .line 471
    .local v16, interimReasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 476
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    invoke-static/range {v4 .. v9}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/List;)Ljava/util/Set;

    move-result-object v18

    .line 479
    .local v18, keys:Ljava/util/Set;
    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v17

    .line 481
    .local v17, key:Ljava/security/PublicKey;
    const/4 v13, 0x0

    .line 483
    .local v13, deltaCRL:Ljava/security/cert/X509CRL;
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 485
    move-object/from16 v0, p2

    invoke-static {v12, v0, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509CRL;)Ljava/util/Set;

    move-result-object v14

    .line 489
    .local v14, deltaCRLs:Ljava/util/Set;
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v13

    .line 505
    .end local v14           #deltaCRLs:Ljava/util/Set;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_5

    .line 511
    invoke-interface/range {p1 .. p1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 512
    new-instance v5, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No valid CRL for current time found."

    invoke-direct {v5, v6}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 539
    .end local v4           #crl:Ljava/security/cert/X509CRL;
    .end local v13           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v16           #interimReasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v17           #key:Ljava/security/PublicKey;
    .end local v18           #keys:Ljava/util/Set;
    :catch_0
    move-exception v15

    .line 540
    .local v15, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v19, v15

    .line 541
    goto :goto_0

    .line 516
    .end local v15           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v4       #crl:Ljava/security/cert/X509CRL;
    .restart local v13       #deltaCRL:Ljava/security/cert/X509CRL;
    .restart local v16       #interimReasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v17       #key:Ljava/security/PublicKey;
    .restart local v18       #keys:Ljava/util/Set;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 522
    move-object/from16 v0, p2

    invoke-static {v13, v4, v0}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 525
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p2

    invoke-static {v0, v13, v1, v2, v3}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 529
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-static {v0, v4, v1, v2}, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lmyorg/bouncycastle/jce/provider/CertStatus;)V

    .line 532
    invoke-virtual/range {p5 .. p5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 533
    const/16 v5, 0xb

    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 537
    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lmyorg/bouncycastle/jce/provider/ReasonsMask;)V
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 543
    .end local v4           #crl:Ljava/security/cert/X509CRL;
    .end local v13           #deltaCRL:Ljava/security/cert/X509CRL;
    .end local v16           #interimReasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v17           #key:Ljava/security/PublicKey;
    .end local v18           #keys:Ljava/util/Set;
    :cond_7
    if-nez v20, :cond_0

    .line 544
    throw v19
.end method

.method protected static checkCRLs(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V
    .locals 18
    .parameter "attrCert"
    .parameter "paramsPKIX"
    .parameter "issuerCert"
    .parameter "validDate"
    .parameter "certPathCerts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->isRevocationEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 111
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_5

    .line 112
    const/4 v9, 0x0

    .line 114
    .local v9, crldp:Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 121
    :try_start_1
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromCRLDistributionPoint(Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    new-instance v6, Lmyorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 129
    .local v6, certStatus:Lmyorg/bouncycastle/jce/provider/CertStatus;
    new-instance v7, Lmyorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 131
    .local v7, reasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    const/4 v14, 0x0

    .line 132
    .local v14, lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const/16 v16, 0x0

    .line 134
    .local v16, validCrlFound:Z
    if-eqz v9, :cond_0

    .line 135
    const/4 v10, 0x0

    .line 137
    .local v10, dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 143
    const/4 v12, 0x0

    .line 145
    .local v12, i:I
    :goto_0
    :try_start_3
    array-length v2, v10

    if-ge v12, v2, :cond_0

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_0

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 148
    .local v3, paramsPKIXClone:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    aget-object v1, v10, v12

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 150
    const/16 v16, 0x1

    .line 145
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 116
    .end local v3           #paramsPKIXClone:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v6           #certStatus:Lmyorg/bouncycastle/jce/provider/CertStatus;
    .end local v7           #reasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v10           #dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v12           #i:I
    .end local v14           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16           #validCrlFound:Z
    :catch_0
    move-exception v11

    .line 117
    .local v11, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v2, v4, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 123
    .end local v11           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v11

    .line 124
    .restart local v11       #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v4, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 138
    .end local v11           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6       #certStatus:Lmyorg/bouncycastle/jce/provider/CertStatus;
    .restart local v7       #reasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v10       #dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v14       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v16       #validCrlFound:Z
    :catch_2
    move-exception v11

    .line 139
    .local v11, e:Ljava/lang/Exception;
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Distribution points could not be read."

    invoke-direct {v2, v4, v11}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 152
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v12       #i:I
    :catch_3
    move-exception v11

    .line 153
    .local v11, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v14, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    .end local v14           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    invoke-direct {v14, v2, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .end local v10           #dps:[Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v11           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v12           #i:I
    .restart local v14       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_0
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_1

    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_1

    .line 172
    const/4 v13, 0x0

    .line 175
    .local v13, issuer:Lmyorg/bouncycastle/asn1/DERObject;
    :try_start_4
    new-instance v4, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p0 .. p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v2

    invoke-virtual {v2}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v2

    const/4 v5, 0x0

    aget-object v2, v2, v5

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-direct {v4, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v4}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v13

    .line 181
    :try_start_5
    new-instance v1, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;

    const/4 v4, 0x0

    new-instance v5, Lmyorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v8, Lmyorg/bouncycastle/asn1/x509/GeneralName;

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-direct {v8, v0, v13}, Lmyorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v8}, Lmyorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lmyorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v2, v4, v5}, Lmyorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILmyorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v5}, Lmyorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lmyorg/bouncycastle/asn1/x509/DistributionPointName;Lmyorg/bouncycastle/asn1/x509/ReasonFlags;Lmyorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 184
    .local v1, dp:Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual/range {p1 .. p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .restart local v3       #paramsPKIXClone:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    .line 186
    invoke-static/range {v1 .. v8}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lmyorg/bouncycastle/asn1/x509/DistributionPoint;Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/jce/provider/CertStatus;Lmyorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;)V
    :try_end_5
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 188
    const/16 v16, 0x1

    .line 195
    .end local v1           #dp:Lmyorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v3           #paramsPKIXClone:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    .end local v13           #issuer:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_1
    :goto_1
    if-nez v16, :cond_2

    .line 196
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "No valid CRL found."

    invoke-direct {v2, v4, v14}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 177
    .restart local v13       #issuer:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_4
    move-exception v11

    .line 178
    .local v11, e:Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v2, v4, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 189
    .end local v11           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 190
    .local v11, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v14, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    .end local v14           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    const-string v2, "No valid CRL for distribution point found."

    invoke-direct {v14, v2, v11}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v14       #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_1

    .line 198
    .end local v11           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v13           #issuer:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_2
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-eq v2, v4, :cond_3

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate revocation after "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, message:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", reason: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lmyorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 203
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v15}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    .end local v15           #message:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lmyorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 207
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Lmyorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 209
    :cond_4
    invoke-virtual {v6}, Lmyorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_7

    .line 210
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Attribute certificate status could not be determined."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    .end local v6           #certStatus:Lmyorg/bouncycastle/jce/provider/CertStatus;
    .end local v7           #reasonsMask:Lmyorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v9           #crldp:Lmyorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v14           #lastException:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16           #validCrlFound:Z
    :cond_5
    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_7

    .line 217
    :cond_6
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v2, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_7
    return-void
.end method

.method protected static processAttrCert1(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;
    .locals 12
    .parameter "attrCert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 326
    const/4 v8, 0x0

    .line 328
    .local v8, result:Ljava/security/cert/CertPathBuilderResult;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 329
    .local v2, holderPKCs:Ljava/util/Set;
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 330
    new-instance v9, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 331
    .local v9, selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 332
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v7

    .line 333
    .local v7, principals:[Ljava/security/Principal;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v10, v7

    if-ge v3, v10, :cond_1

    .line 335
    :try_start_0
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_0

    .line 336
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 338
    :cond_0
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 344
    .end local v1           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v1

    .line 345
    .local v1, e:Ljava/io/IOException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 348
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 349
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 353
    .end local v3           #i:I
    .end local v7           #principals:[Ljava/security/Principal;
    .end local v9           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :cond_2
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 354
    new-instance v9, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 355
    .restart local v9       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lmyorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v7

    .line 356
    .restart local v7       #principals:[Ljava/security/Principal;
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_4

    .line 358
    :try_start_1
    aget-object v10, v7, v3

    instance-of v10, v10, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_3

    .line 359
    aget-object v10, v7, v3

    check-cast v10, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 361
    :cond_3
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getStores()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 363
    :catch_2
    move-exception v1

    .line 364
    .local v1, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 367
    .end local v1           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_3
    move-exception v1

    .line 368
    .local v1, e:Ljava/io/IOException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Unable to encode X500 principal."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 371
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 372
    new-instance v10, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {v10, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 377
    .end local v3           #i:I
    .end local v7           #principals:[Ljava/security/Principal;
    .end local v9           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :cond_5
    invoke-static {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v6

    check-cast v6, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 379
    .local v6, params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    const/4 v5, 0x0

    .line 380
    .local v5, lastException:Ljava/security/cert/CertPathValidatorException;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 381
    new-instance v9, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v9}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 382
    .restart local v9       #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 383
    invoke-virtual {v6, v9}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lmyorg/bouncycastle/util/Selector;)V

    .line 384
    const/4 v0, 0x0

    .line 386
    .local v0, builder:Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string v10, "PKIX"

    const-string v11, "myBC"

    invoke-static {v10, v11}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 393
    :try_start_3
    invoke-static {v6}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v8

    goto :goto_2

    .line 387
    :catch_4
    move-exception v1

    .line 388
    .local v1, e:Ljava/security/NoSuchProviderException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 389
    .end local v1           #e:Ljava/security/NoSuchProviderException;
    :catch_5
    move-exception v1

    .line 390
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v10, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Support class could not be created."

    invoke-direct {v10, v11, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 394
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_6
    move-exception v1

    .line 395
    .local v1, e:Ljava/security/cert/CertPathBuilderException;
    new-instance v5, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    .end local v5           #lastException:Ljava/security/cert/CertPathValidatorException;
    const-string v10, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v5, v10, v1}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    .restart local v5       #lastException:Ljava/security/cert/CertPathValidatorException;
    goto :goto_2

    .line 398
    .end local v1           #e:Ljava/security/cert/CertPathBuilderException;
    :catch_7
    move-exception v1

    .line 400
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 403
    .end local v0           #builder:Ljava/security/cert/CertPathBuilder;
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    .end local v9           #selector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;
    :cond_6
    if-eqz v5, :cond_7

    .line 404
    throw v5

    .line 406
    :cond_7
    invoke-interface {v8}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v10

    return-object v10
.end method

.method protected static processAttrCert2(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 4
    .parameter "certPath"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, validator:Ljava/security/cert/CertPathValidator;
    :try_start_0
    const-string v2, "PKIX"

    const-string v3, "myBC"

    invoke-static {v2, v3}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 296
    :try_start_1
    invoke-virtual {v1, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    return-object v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 292
    .end local v0           #e:Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Support class could not be created."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 297
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 298
    .local v0, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {v2, v3, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 301
    .end local v0           #e:Ljava/security/cert/CertPathValidatorException;
    :catch_3
    move-exception v0

    .line 303
    .local v0, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static processAttrCert3(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 2
    .parameter "acIssuerCert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 280
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    return-void
.end method

.method protected static processAttrCert4(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 6
    .parameter "acIssuerCert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustedACIssuers()Ljava/util/Set;

    move-result-object v2

    .line 257
    .local v2, set:Ljava/util/Set;
    const/4 v3, 0x0

    .line 258
    .local v3, trusted:Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 260
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 266
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    :cond_2
    if-nez v3, :cond_3

    .line 267
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Attribute certificate issuer is not directly trusted."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 270
    :cond_3
    return-void
.end method

.method protected static processAttrCert5(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 3
    .parameter "attrCert"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    invoke-static {p1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p0, v1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 249
    .end local v0           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Attribute certificate is not valid."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processAttrCert7(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    .locals 6
    .parameter "attrCert"
    .parameter "certPath"
    .parameter "holderCertPath"
    .parameter "pkixParams"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p0}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 70
    .local v2, set:Ljava/util/Set;
    sget-object v3, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    :try_start_0
    sget-object v3, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-static {p0, v3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lmyorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :cond_0
    sget-object v3, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getAttrCertCheckers()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmyorg/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v3, p0, p1, p2, v2}, Lmyorg/bouncycastle/x509/PKIXAttrCertChecker;->check(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_0

    .line 74
    .end local v1           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 77
    .end local v0           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Target information extension could not be read."

    invoke-direct {v3, v4, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 86
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_2
    return-void
.end method
