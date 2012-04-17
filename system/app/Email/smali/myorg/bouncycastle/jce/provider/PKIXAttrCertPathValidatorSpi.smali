.class public Lmyorg/bouncycastle/jce/provider/PKIXAttrCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXAttrCertPathValidatorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v0, p2, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    check-cast p2, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 59
    invoke-virtual {p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v0

    .line 60
    instance-of v1, v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    if-nez v1, :cond_1

    .line 61
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

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

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    check-cast v0, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-virtual {v0}, Lmyorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lmyorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v1

    .line 69
    invoke-static {v1, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert1(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 70
    invoke-static {p1, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert2(Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v3

    .line 72
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 73
    invoke-static {v0, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert3(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 74
    invoke-static {v0, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert4(Ljava/security/cert/X509Certificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 75
    invoke-static {v1, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert5(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 77
    invoke-static {v1, p1, v2, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert7(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 78
    invoke-static {v1, p2}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->additionalChecks(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;)V

    .line 81
    const/4 v2, 0x0

    const/4 v4, -0x1

    :try_start_0
    invoke-static {p2, v2, v4}, Lmyorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/CertPath;I)Ljava/util/Date;
    :try_end_0
    .catch Lmyorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, p2, v0, v2, v4}, Lmyorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRLs(Lmyorg/bouncycastle/x509/X509AttributeCertificate;Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/util/List;)V

    .line 89
    return-object v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Could not get validity date from attribute certificate."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
