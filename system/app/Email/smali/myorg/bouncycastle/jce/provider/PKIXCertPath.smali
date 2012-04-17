.class public Lmyorg/bouncycastle/jce/provider/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final certPathEncodings:Ljava/util/List;


# instance fields
.field private certificates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, encodings:Ljava/util/List;
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v1, "PEM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 12
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 141
    const-string v9, "X.509"

    invoke-direct {p0, v9}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 143
    :try_start_0
    const-string v9, "PkiPath"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 144
    new-instance v2, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v2, derInStream:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 146
    .local v3, derObject:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v9, v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v9, :cond_0

    .line 147
    new-instance v9, Ljava/security/cert/CertificateException;

    const-string v10, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v2           #derInStream:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #derObject:Lmyorg/bouncycastle/asn1/DERObject;
    :catch_0
    move-exception v7

    .line 171
    .local v7, ex:Ljava/io/IOException;
    :goto_0
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 150
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v2       #derInStream:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v3       #derObject:Lmyorg/bouncycastle/asn1/DERObject;
    :cond_0
    :try_start_1
    check-cast v3, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local v3           #derObject:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 151
    .local v4, e:Ljava/util/Enumeration;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 152
    const-string v9, "X.509"

    const-string v10, "myBC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 153
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 154
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/ASN1Encodable;

    .line 155
    .local v5, element:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    const-string v9, "DER"

    invoke-virtual {v5, v9}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B

    move-result-object v6

    .line 156
    .local v6, encoded:[B
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const/4 v10, 0x0

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v11}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 173
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #derInStream:Lmyorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #e:Ljava/util/Enumeration;
    .end local v5           #element:Lmyorg/bouncycastle/asn1/ASN1Encodable;
    .end local v6           #encoded:[B
    :catch_1
    move-exception v7

    .line 174
    .local v7, ex:Ljava/security/NoSuchProviderException;
    :goto_2
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 159
    .end local v7           #ex:Ljava/security/NoSuchProviderException;
    :cond_1
    :try_start_2
    const-string v9, "PKCS7"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "PEM"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 160
    :cond_2
    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_1

    .line 161
    .end local p1
    .local v8, inStream:Ljava/io/InputStream;
    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 162
    const-string v9, "X.509"

    const-string v10, "myBC"

    invoke-static {v9, v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 164
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_3
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_3

    .line 165
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 170
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_2
    move-exception v7

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto/16 :goto_0

    .end local p1
    .restart local v0       #cert:Ljava/security/cert/Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    .restart local v8       #inStream:Ljava/io/InputStream;
    :cond_3
    move-object p1, v8

    .line 179
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_4
    iget-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, v9}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 180
    return-void

    .line 168
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_5
    :try_start_4
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_1

    .line 173
    .end local p1
    .restart local v8       #inStream:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto :goto_2
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter "certificates"

    .prologue
    .line 132
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 134
    return-void
.end method

.method private sortCerts(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .parameter "certs"

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 128
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 63
    .restart local p1
    :cond_1
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 64
    .local v4, issuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x1

    .line 66
    .local v6, okay:Z
    const/4 v3, 0x1

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_3

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 69
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 70
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_2
    const/4 v6, 0x0

    .line 77
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_3
    if-nez v6, :cond_0

    .line 82
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v8, retList:Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    .local v7, orig:Ljava/util/List;
    const/4 v3, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 86
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 87
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 89
    .local v2, found:Z
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    .line 91
    .local v9, subject:Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v5, v10, :cond_4

    .line 92
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 93
    .local v0, c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 94
    const/4 v2, 0x1

    .line 99
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_4
    if-nez v2, :cond_5

    .line 100
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 91
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 106
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #found:Z
    .end local v5           #j:I
    .end local v9           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_8

    move-object p1, v7

    .line 107
    goto/16 :goto_0

    .line 110
    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-eq v3, v10, :cond_b

    .line 111
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 113
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 114
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 115
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 116
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 110
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 113
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 124
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v5           #j:I
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    move-object p1, v7

    .line 125
    goto/16 :goto_0

    :cond_c
    move-object p1, v8

    .line 128
    goto/16 :goto_0
.end method

.method private toASN1Object(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/DERObject;
    .locals 4
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while encoding certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDEREncoded(Lmyorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lmyorg/bouncycastle/asn1/ASN1Encodable;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 2

    .prologue
    .line 272
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v1

    .line 204
    .local v1, iter:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, enc:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 207
    check-cast v0, Ljava/lang/String;

    .end local v0           #enc:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 210
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 13
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 223
    const-string v1, "PkiPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    new-instance v12, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 226
    .local v12, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    iget-object v2, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 227
    .local v10, iter:Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v12, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_0

    .line 231
    :cond_0
    new-instance v1, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v12}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lmyorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    .line 259
    .end local v10           #iter:Ljava/util/ListIterator;
    .end local v12           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_1
    return-object v1

    .line 232
    :cond_1
    const-string v1, "PKCS7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    new-instance v3, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, v1, v5}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 235
    .local v3, encInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v12, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 236
    .restart local v12       #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v9, v1, :cond_2

    .line 237
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v12, v1}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 236
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 240
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/asn1/pkcs/SignedData;

    new-instance v1, Lmyorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v2, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2}, Lmyorg/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v4, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v12}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    new-instance v6, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/DERSet;-><init>()V

    invoke-direct/range {v0 .. v6}, Lmyorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lmyorg/bouncycastle/asn1/DERInteger;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;Lmyorg/bouncycastle/asn1/ASN1Set;)V

    .line 243
    .local v0, sd:Lmyorg/bouncycastle/asn1/pkcs/SignedData;
    new-instance v1, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Lmyorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v1}, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lmyorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    goto :goto_1

    .line 244
    .end local v0           #sd:Lmyorg/bouncycastle/asn1/pkcs/SignedData;
    .end local v3           #encInfo:Lmyorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v9           #i:I
    .end local v12           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    const-string v1, "PEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 246
    .local v7, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Lmyorg/bouncycastle/openssl/PEMWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v11, v1}, Lmyorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 249
    .local v11, pWrt:Lmyorg/bouncycastle/openssl/PEMWriter;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_3
    :try_start_0
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v9, v1, :cond_4

    .line 250
    iget-object v1, p0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v1}, Lmyorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 249
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 253
    :cond_4
    invoke-virtual {v11}, Lmyorg/bouncycastle/openssl/PEMWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto/16 :goto_1

    .line 254
    :catch_0
    move-exception v8

    .line 255
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v2, "can\'t encode certificate for PEM encoded path"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    .end local v7           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #i:I
    .end local v11           #pWrt:Lmyorg/bouncycastle/openssl/PEMWriter;
    :cond_5
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported encoding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lmyorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
