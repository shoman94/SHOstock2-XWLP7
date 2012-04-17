.class Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;
.super Ljava/lang/Object;
.source "SMIMESignedGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/mail/smime/SMIMEStreamingProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentSigner"
.end annotation


# instance fields
.field private final _content:Ljavax/mail/internet/MimeBodyPart;

.field private final _encapsulate:Z

.field private final _provider:Ljava/security/Provider;

.field final synthetic this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljavax/mail/internet/MimeBodyPart;ZLjava/security/Provider;)V
    .locals 0
    .parameter
    .parameter "content"
    .parameter "encapsulate"
    .parameter "provider"

    .prologue
    .line 616
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 617
    iput-object p2, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_content:Ljavax/mail/internet/MimeBodyPart;

    .line 618
    iput-boolean p3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_encapsulate:Z

    .line 619
    iput-object p4, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_provider:Ljava/security/Provider;

    .line 620
    return-void
.end method

.method private writeBodyPart(Ljava/io/OutputStream;Ljavax/mail/internet/MimeBodyPart;)V
    .locals 9
    .parameter "out"
    .parameter "bodyPart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p2}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "multipart"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 664
    invoke-virtual {p2}, Ljavax/mail/internet/MimeBodyPart;->getContent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/Multipart;

    .line 665
    .local v5, mp:Ljavax/mail/Multipart;
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v5}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 666
    .local v1, contentType:Ljavax/mail/internet/ContentType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, boundary:Ljava/lang/String;
    new-instance v4, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;

    invoke-direct {v4, p1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 670
    .local v4, lOut:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    invoke-virtual {p2}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v2

    .line 671
    .local v2, headers:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 672
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    .line 677
    invoke-static {v4, p2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V

    .line 679
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Ljavax/mail/Multipart;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 680
    invoke-virtual {v4, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v5, v3}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v7

    check-cast v7, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, p1, v7}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->writeBodyPart(Ljava/io/OutputStream;Ljavax/mail/internet/MimeBodyPart;)V

    .line 682
    invoke-virtual {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    .line 679
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 685
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 693
    .end local v0           #boundary:Ljava/lang/String;
    .end local v1           #contentType:Ljavax/mail/internet/ContentType;
    .end local v2           #headers:Ljava/util/Enumeration;
    .end local v3           #i:I
    .end local v4           #lOut:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    .end local v5           #mp:Ljavax/mail/Multipart;
    :goto_2
    return-void

    .line 687
    :cond_2
    iget-object v7, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    #getter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_defaultContentTransferEncoding:Ljava/lang/String;
    invoke-static {v7}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$400(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 688
    new-instance v6, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    invoke-direct {v6, p1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p1
    .local v6, out:Ljava/io/OutputStream;
    move-object p1, v6

    .line 691
    .end local v6           #out:Ljava/io/OutputStream;
    .restart local p1
    :cond_3
    invoke-virtual {p2, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_2
.end method


# virtual methods
.method protected getGenerator()Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/cms/CMSException;,
            Ljava/security/cert/CertStoreException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    invoke-direct {v0}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;-><init>()V

    .line 627
    .local v0, gen:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    #getter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_certStores:Ljava/util/List;
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$000(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addCertificatesAndCRLs(Ljava/security/cert/CertStore;)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    #getter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_attributeCerts:Ljava/util/List;
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$100(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/X509Store;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addAttributeCertificates(Lmyorg/bouncycastle/x509/X509Store;)V

    goto :goto_1

    .line 635
    :cond_1
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    #getter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_signers:Ljava/util/List;
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$200(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 636
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;

    .line 638
    .local v9, signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;
    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getEncryptionOID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 639
    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getEncryptionOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getDigestOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getSignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v5

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getUnsignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v6

    iget-object v7, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_provider:Ljava/security/Provider;

    invoke-virtual/range {v0 .. v7}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V

    goto :goto_2

    .line 643
    :cond_2
    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getDigestOID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getSignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v4

    invoke-virtual {v9}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;->getUnsignedAttr()Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v5

    iget-object v6, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_provider:Ljava/security/Provider;

    invoke-virtual/range {v0 .. v6}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigner(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Ljava/lang/String;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Lmyorg/bouncycastle/asn1/cms/AttributeTable;Ljava/security/Provider;)V

    goto :goto_2

    .line 648
    .end local v9           #signer:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$Signer;
    :cond_3
    new-instance v1, Lmyorg/bouncycastle/cms/SignerInformationStore;

    iget-object v2, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    #getter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_oldSigners:Ljava/util/List;
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$300(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->addSigners(Lmyorg/bouncycastle/cms/SignerInformationStore;)V

    .line 650
    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    :try_start_0
    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->getGenerator()Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-result-object v1

    .line 699
    .local v1, gen:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    iget-boolean v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_encapsulate:Z

    invoke-virtual {v1, p1, v3}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v2

    .line 701
    .local v2, signingStream:Ljava/io/OutputStream;
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_content:Ljavax/mail/internet/MimeBodyPart;

    if-eqz v3, :cond_0

    .line 702
    iget-boolean v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_encapsulate:Z

    if-nez v3, :cond_1

    .line 703
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {p0, v2, v3}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->writeBodyPart(Ljava/io/OutputStream;Ljavax/mail/internet/MimeBodyPart;)V

    .line 712
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 714
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->this$0:Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;

    invoke-virtual {v1}, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->getGeneratedDigests()Ljava/util/Map;

    move-result-object v4

    #setter for: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->_digests:Ljava/util/Map;
    invoke-static {v3, v4}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$602(Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;Ljava/util/Map;)Ljava/util/Map;

    .line 728
    return-void

    .line 705
    :cond_1
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    invoke-static {}, Ljavax/activation/CommandMap;->getDefaultCommandMap()Ljavax/activation/CommandMap;

    move-result-object v4

    #calls: Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->addCommands(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;
    invoke-static {v4}, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator;->access$500(Ljavax/activation/CommandMap;)Ljavax/activation/MailcapCommandMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/activation/DataHandler;->setCommandMap(Ljavax/activation/CommandMap;)V

    .line 708
    iget-object v3, p0, Lmyorg/bouncycastle/mail/smime/SMIMESignedGenerator$ContentSigner;->_content:Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, v2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lmyorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertStoreException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 715
    .end local v1           #gen:Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
    .end local v2           #signingStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 716
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 717
    .end local v0           #e:Ljavax/mail/MessagingException;
    :catch_1
    move-exception v0

    .line 718
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 719
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 720
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 721
    .end local v0           #e:Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v0

    .line 722
    .local v0, e:Lmyorg/bouncycastle/cms/CMSException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Lmyorg/bouncycastle/cms/CMSException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 723
    .end local v0           #e:Lmyorg/bouncycastle/cms/CMSException;
    :catch_4
    move-exception v0

    .line 724
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 725
    .end local v0           #e:Ljava/security/InvalidKeyException;
    :catch_5
    move-exception v0

    .line 726
    .local v0, e:Ljava/security/cert/CertStoreException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertStoreException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
