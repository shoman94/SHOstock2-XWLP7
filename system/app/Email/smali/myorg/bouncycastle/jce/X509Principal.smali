.class public Lmyorg/bouncycastle/jce/X509Principal;
.super Lmyorg/bouncycastle/asn1/x509/X509Name;
.source "X509Principal.java"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "dirName"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 0
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lmyorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-static {v0}, Lmyorg/bouncycastle/jce/X509Principal;->readSequence(Lmyorg/bouncycastle/asn1/ASN1InputStream;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 38
    return-void
.end method

.method private static readSequence(Lmyorg/bouncycastle/asn1/ASN1InputStream;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .locals 4
    .parameter "aIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not an ASN.1 Sequence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .prologue
    .line 115
    :try_start_0
    const-string v1, "DER"

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/jce/X509Principal;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lmyorg/bouncycastle/jce/X509Principal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
