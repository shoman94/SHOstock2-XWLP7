.class Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;
.super Ljava/io/OutputStream;
.source "CMSSignedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TeeOutputStream"
.end annotation


# instance fields
.field private s1:Ljava/io/OutputStream;

.field private s2:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "dataOutputStream"
    .parameter "digStream"

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 760
    iput-object p1, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s1:Ljava/io/OutputStream;

    .line 761
    iput-object p2, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s2:Ljava/io/OutputStream;

    .line 762
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
    .line 780
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s1:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 781
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s2:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 782
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
    .line 775
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 776
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s2:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 777
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 766
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s2:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 767
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s1:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 771
    iget-object v0, p0, Lmyorg/bouncycastle/cms/CMSSignedDataStreamGenerator$TeeOutputStream;->s2:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 772
    return-void
.end method
