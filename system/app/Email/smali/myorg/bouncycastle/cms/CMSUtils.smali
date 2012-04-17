.class public Lmyorg/bouncycastle/cms/CMSUtils;
.super Ljava/lang/Object;
.source "CMSUtils.java"


# static fields
.field private static final RUNTIME:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/cms/CMSUtils;->RUNTIME:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;
    .locals 2
    .parameter "s"
    .parameter "tagNo"
    .parameter "isExplicit"
    .parameter "bufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;

    invoke-direct {v0, p0, p1, p2}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    .line 125
    .local v0, octGen:Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;
    if-eqz p3, :cond_0

    .line 126
    new-array v1, p3, [B

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream([B)Ljava/io/OutputStream;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BEROctetStringGenerator;->getOctetOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    goto :goto_0
.end method

.method static createBerSetFromList(Ljava/util/List;)Lmyorg/bouncycastle/asn1/ASN1Set;
    .locals 3
    .parameter "derObjects"

    .prologue
    .line 102
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 104
    .local v1, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v2, Lmyorg/bouncycastle/asn1/BERSet;

    invoke-direct {v2, v1}, Lmyorg/bouncycastle/asn1/BERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2
.end method

.method static getCRLsFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;
    .locals 6
    .parameter "certStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, crls:Ljava/util/List;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 88
    .local v0, c:Ljava/security/cert/X509CRL;
    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 92
    .end local v0           #c:Ljava/security/cert/X509CRL;
    .end local v3           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 93
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 94
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 95
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 96
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 97
    .local v2, e:Ljava/security/cert/CRLException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error encoding crls"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 91
    .end local v2           #e:Ljava/security/cert/CRLException;
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_0
    return-object v1
.end method

.method static getCertificatesFromStore(Ljava/security/cert/CertStore;)Ljava/util/List;
    .locals 6
    .parameter "certStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v1, certs:Ljava/util/List;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 67
    .local v0, c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v4

    invoke-static {v4}, Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 72
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v3           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 73
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 74
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error processing certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 76
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 77
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Lmyorg/bouncycastle/cms/CMSException;

    const-string v5, "error encoding certs"

    invoke-direct {v4, v5, v2}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 71
    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v3       #it:Ljava/util/Iterator;
    :cond_0
    return-object v1
.end method

.method static getMaximumMemory()I
    .locals 4

    .prologue
    .line 39
    sget-object v2, Lmyorg/bouncycastle/cms/CMSUtils;->RUNTIME:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 41
    .local v0, maxMem:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 42
    const v2, 0x7fffffff

    .line 45
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 4
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p0, :cond_1

    .line 164
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 166
    .local v0, prov:Ljava/security/Provider;
    if-eqz v0, :cond_0

    .line 173
    .end local v0           #prov:Ljava/security/Provider;
    :goto_0
    return-object v0

    .line 170
    .restart local v0       #prov:Ljava/security/Provider;
    :cond_0
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0           #prov:Ljava/security/Provider;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getTBSCertificateStructure(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .locals 3
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readContentInfo(Ljava/io/InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-static {}, Lmyorg/bouncycastle/cms/CMSUtils;->getMaximumMemory()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v0}, Lmyorg/bouncycastle/cms/CMSUtils;->readContentInfo(Lmyorg/bouncycastle/asn1/ASN1InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method private static readContentInfo(Lmyorg/bouncycastle/asn1/ASN1InputStream;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/ContentInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    const-string v2, "IOException reading content."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 149
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lmyorg/bouncycastle/cms/CMSException;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
