.class public Lmyorg/bouncycastle/cms/CMSSignedDataParser;
.super Lmyorg/bouncycastle/cms/CMSContentInfoParser;
.source "CMSSignedDataParser.java"


# static fields
.field private static final HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field private _digests:Ljava/util/Map;

.field private _signedContent:Lmyorg/bouncycastle/cms/CMSTypedStream;

.field private _signedContentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private _signedData:Lmyorg/bouncycastle/asn1/cms/SignedDataParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "sigData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/cms/CMSSignedDataParser;-><init>(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/InputStream;)V
    .locals 12
    .parameter "signedContent"
    .parameter "sigData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    .line 136
    :try_start_0
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lmyorg/bouncycastle/cms/CMSTypedStream;

    .line 137
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSContentInfoParser;->_contentInfo:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v10, 0x10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-static {v9}, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    move-result-object v9

    iput-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    .line 138
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_digests:Ljava/util/Map;

    .line 140
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->getDigestAlgorithms()Lmyorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v3

    .line 143
    .local v3, digAlgs:Lmyorg/bouncycastle/asn1/ASN1SetParser;
    :goto_0
    invoke-interface {v3}, Lmyorg/bouncycastle/asn1/ASN1SetParser;->readObject()Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    .local v7, o:Lmyorg/bouncycastle/asn1/DEREncodable;
    if-eqz v7, :cond_0

    .line 144
    invoke-interface {v7}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-static {v9}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 146
    .local v6, id:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_1
    sget-object v9, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, digestName:Ljava/lang/String;
    sget-object v9, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->HELPER:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 149
    .local v2, dig:Ljava/security/MessageDigest;
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_digests:Ljava/util/Map;

    invoke-interface {v9, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    .end local v2           #dig:Ljava/security/MessageDigest;
    .end local v4           #digestName:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_0

    .line 159
    .end local v6           #id:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :cond_0
    :try_start_2
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedData:Lmyorg/bouncycastle/asn1/cms/SignedDataParser;

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/cms/SignedDataParser;->getEncapContentInfo()Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;

    move-result-object v0

    .line 160
    .local v0, cont:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    check-cast v8, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;

    .line 163
    .local v8, octs:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    if-eqz v8, :cond_1

    .line 164
    new-instance v1, Lmyorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    invoke-virtual {v9}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8}, Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Lmyorg/bouncycastle/cms/CMSTypedStream;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 167
    .local v1, ctStr:Lmyorg/bouncycastle/cms/CMSTypedStream;
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lmyorg/bouncycastle/cms/CMSTypedStream;

    if-nez v9, :cond_2

    .line 168
    iput-object v1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lmyorg/bouncycastle/cms/CMSTypedStream;

    .line 178
    .end local v1           #ctStr:Lmyorg/bouncycastle/cms/CMSTypedStream;
    :cond_1
    :goto_1
    if-nez p1, :cond_3

    .line 179
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;->getContentType()Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    iput-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    :goto_2
    iget-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_digests:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 188
    new-instance v9, Lmyorg/bouncycastle/cms/CMSException;

    const-string v10, "no digests could be created for message."

    invoke-direct {v9, v10}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 174
    .restart local v1       #ctStr:Lmyorg/bouncycastle/cms/CMSTypedStream;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lmyorg/bouncycastle/cms/CMSTypedStream;->drain()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 183
    .end local v0           #cont:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    .end local v1           #ctStr:Lmyorg/bouncycastle/cms/CMSTypedStream;
    .end local v3           #digAlgs:Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .end local v7           #o:Lmyorg/bouncycastle/asn1/DEREncodable;
    .end local v8           #octs:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    :catch_1
    move-exception v5

    .line 184
    .local v5, e:Ljava/io/IOException;
    new-instance v9, Lmyorg/bouncycastle/cms/CMSException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "io exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v5}, Lmyorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v9

    .line 181
    .end local v5           #e:Ljava/io/IOException;
    .restart local v0       #cont:Lmyorg/bouncycastle/asn1/cms/ContentInfoParser;
    .restart local v3       #digAlgs:Lmyorg/bouncycastle/asn1/ASN1SetParser;
    .restart local v7       #o:Lmyorg/bouncycastle/asn1/DEREncodable;
    .restart local v8       #octs:Lmyorg/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_3
    :try_start_4
    new-instance v9, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v10, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContent:Lmyorg/bouncycastle/cms/CMSTypedStream;

    invoke-virtual {v10}, Lmyorg/bouncycastle/cms/CMSTypedStream;->getContentType()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lmyorg/bouncycastle/cms/CMSSignedDataParser;->_signedContentType:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 190
    :cond_4
    return-void
.end method
