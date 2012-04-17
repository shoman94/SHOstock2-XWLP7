.class public Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXAttrCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private build(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 17
    .parameter "attrCert"
    .parameter "tbvCert"
    .parameter "pkixParams"
    .parameter "tbvPath"

    .prologue
    .line 144
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 145
    const/4 v4, 0x0

    .line 237
    :cond_0
    :goto_0
    return-object v4

    .line 149
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 150
    const/4 v4, 0x0

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 154
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v14

    if-le v13, v14, :cond_3

    .line 155
    const/4 v4, 0x0

    goto :goto_0

    .line 159
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v4, 0x0

    .line 166
    .local v4, builderResult:Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    const-string v13, "X.509"

    const-string v14, "myBC"

    invoke-static {v13, v14}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 167
    .local v5, cFact:Ljava/security/cert/CertificateFactory;
    const-string v13, "RFC3281"

    const-string v14, "myBC"

    invoke-static {v13, v14}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 175
    .local v12, validator:Ljava/security/cert/CertPathValidator;
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    if-eqz v13, :cond_5

    .line 180
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 187
    .local v6, certPath:Ljava/security/cert/CertPath;
    :try_start_3
    move-object/from16 v0, p3

    invoke-virtual {v12, v6, v0}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v11

    check-cast v11, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 192
    .local v11, result:Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_4
    new-instance v13, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v14

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v15

    invoke-virtual {v11}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v6, v14, v15, v0}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v13

    goto :goto_0

    .line 168
    .end local v5           #cFact:Ljava/security/cert/CertificateFactory;
    .end local v6           #certPath:Ljava/security/cert/CertPath;
    .end local v11           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v12           #validator:Ljava/security/cert/CertPathValidator;
    :catch_0
    move-exception v7

    .line 170
    .local v7, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Exception creating support classes."

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 181
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #cFact:Ljava/security/cert/CertificateFactory;
    .restart local v12       #validator:Ljava/security/cert/CertPathValidator;
    :catch_1
    move-exception v7

    .line 182
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_5
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "Certification path could not be constructed from certificate list."

    invoke-direct {v13, v14, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_5
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_2

    .line 230
    .end local v7           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 231
    .local v7, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "No valid certification path could be build."

    invoke-direct {v13, v14, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 234
    .end local v7           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    if-nez v4, :cond_0

    .line 235
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 188
    .restart local v6       #certPath:Ljava/security/cert/CertPath;
    :catch_3
    move-exception v7

    .line 189
    .local v7, e:Ljava/lang/Exception;
    :try_start_6
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "Certification path could not be validated."

    invoke-direct {v13, v14, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_6
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 198
    .end local v6           #certPath:Ljava/security/cert/CertPath;
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    :try_start_7
    invoke-static/range {p2 .. p3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->addAdditionalStoresFromAltNames(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 204
    :try_start_8
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V
    :try_end_8
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_2

    .line 208
    .local v9, issuers:Ljava/util/Collection;
    :try_start_9
    invoke-static/range {p2 .. p3}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    .line 214
    :try_start_a
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 215
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "No issuer certificate for certificate in certification path found."

    invoke-direct {v13, v14}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 199
    .end local v9           #issuers:Ljava/util/Collection;
    :catch_4
    move-exception v7

    .line 200
    .local v7, e:Ljava/security/cert/CertificateParsingException;
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v13, v14, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 209
    .end local v7           #e:Ljava/security/cert/CertificateParsingException;
    .restart local v9       #issuers:Ljava/util/Collection;
    :catch_5
    move-exception v7

    .line 210
    .local v7, e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v13, Lmyorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v14, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v13, v14, v7}, Lmyorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 218
    .end local v7           #e:Lmyorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 220
    .local v10, it:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    if-nez v4, :cond_4

    .line 221
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 224
    .local v8, issuer:Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v8, v2, v3}, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    :try_end_a
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_2

    move-result-object v4

    .line 228
    goto :goto_1
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 45
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_0

    instance-of v0, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    instance-of v0, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_1

    .line 54
    check-cast p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 62
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v0

    .line 68
    instance-of v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    if-nez v1, :cond_2

    .line 69
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetConstraints must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    check-cast p1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-static {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    move-object p1, v0

    goto :goto_0

    .line 75
    :cond_2
    :try_start_0
    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "No attribute certificate found matching targetContraints."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v2, "Error finding target attribute certificate."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 86
    :cond_3
    const/4 v2, 0x0

    .line 89
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 90
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v2, :cond_8

    .line 91
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    .line 93
    new-instance v6, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v6}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 94
    invoke-interface {v1}, Lmyorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lmyorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v7

    .line 95
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 96
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    array-length v0, v7

    if-ge v3, v0, :cond_5

    .line 98
    :try_start_1
    aget-object v0, v7, v3

    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_4

    .line 99
    aget-object v0, v7, v3

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V

    .line 101
    :cond_4
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v6, v0}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Lmyorg/bouncycastle/x509/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v2, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :catch_2
    move-exception v0

    .line 110
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v2, "cannot encode X500Principal."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    :cond_5
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Public key certificate for attribute certificate cannot be found."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v2

    .line 118
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 119
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1, v0, p1, v4}, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v2, v0

    .line 121
    goto/16 :goto_1

    .line 123
    :cond_8
    if-nez v2, :cond_9

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v0, :cond_9

    .line 124
    new-instance v0, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v1, "Possible certificate chain could not be validated."

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 128
    :cond_9
    if-nez v2, :cond_a

    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v0, :cond_a

    .line 129
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v1, "Unable to find certificate chain."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_a
    return-object v2
.end method
