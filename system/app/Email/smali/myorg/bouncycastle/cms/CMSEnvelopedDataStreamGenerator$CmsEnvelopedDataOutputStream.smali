.class Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;
.super Ljava/io/OutputStream;
.source "CMSEnvelopedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmsEnvelopedDataOutputStream"
.end annotation


# instance fields
.field private _cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

.field private _out:Ljavax/crypto/CipherOutputStream;

.field final synthetic this$0:Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;Ljavax/crypto/CipherOutputStream;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;Lmyorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0
    .parameter
    .parameter "out"
    .parameter "cGen"
    .parameter "envGen"
    .parameter "eiGen"

    .prologue
    .line 245
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->this$0:Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 246
    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    .line 247
    iput-object p3, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    .line 248
    iput-object p4, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    .line 249
    iput-object p5, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    .line 250
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 266
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_eiGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 270
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_envGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 271
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_cGen:Lmyorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    .line 272
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherOutputStream;->write(I)V

    .line 254
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 262
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "bytes"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator$CmsEnvelopedDataOutputStream;->_out:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 258
    return-void
.end method
