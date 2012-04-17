.class public Lmyorg/bouncycastle/jce/PrincipalUtil;
.super Ljava/lang/Object;
.source "PrincipalUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;
    .locals 4
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    .line 28
    .local v1, tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v2, Lmyorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/X509Principal;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 29
    .end local v1           #tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_0
    move-exception v0

    .line 30
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/jce/X509Principal;
    .locals 4
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v1

    .line 42
    .local v1, tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v2, Lmyorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-direct {v2, v3}, Lmyorg/bouncycastle/jce/X509Principal;-><init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 43
    .end local v1           #tbsCert:Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
