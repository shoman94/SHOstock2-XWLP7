.class Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;
.super Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.source "SMIMEEnvelopedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnvelopedGenerator"
.end annotation


# instance fields
.field private _encKey:Ljavax/crypto/SecretKey;

.field private _encryptionOID:Ljava/lang/String;

.field private _params:Ljava/security/AlgorithmParameters;

.field private _recipientInfos:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

.field final synthetic this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;

    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;-><init>(Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator;)V

    return-void
.end method


# virtual methods
.method protected open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Ljava/security/Provider;)Ljava/io/OutputStream;
    .locals 1
    .parameter "out"
    .parameter "encryptionOID"
    .parameter "encKey"
    .parameter "params"
    .parameter "recepientInfos"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 340
    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_encryptionOID:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_encKey:Ljavax/crypto/SecretKey;

    .line 342
    iput-object p4, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_params:Ljava/security/AlgorithmParameters;

    .line 343
    iput-object p5, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_recipientInfos:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 345
    invoke-super/range {p0 .. p6}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method regenerate(Ljava/io/OutputStream;Ljava/security/Provider;)Ljava/io/OutputStream;
    .locals 7
    .parameter "out"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lmyorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .prologue
    .line 350
    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_encryptionOID:Ljava/lang/String;

    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_encKey:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_params:Ljava/security/AlgorithmParameters;

    iget-object v5, p0, Lmyorg/bouncycastle/mail/smime/SMIMEEnvelopedGenerator$EnvelopedGenerator;->_recipientInfos:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-super/range {v0 .. v6}, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->open(Ljava/io/OutputStream;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Lmyorg/bouncycastle/asn1/ASN1EncodableVector;Ljava/security/Provider;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
