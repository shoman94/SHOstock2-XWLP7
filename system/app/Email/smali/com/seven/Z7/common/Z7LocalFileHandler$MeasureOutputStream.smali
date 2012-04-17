.class Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;
.super Ljava/io/OutputStream;
.source "Z7LocalFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/common/Z7LocalFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureOutputStream"
.end annotation


# instance fields
.field length:J

.field wrapped:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 570
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    .line 571
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0
    .parameter "stream"
    .parameter "currentLength"

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 565
    iput-object p1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    .line 566
    iput-wide p2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    .line 567
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
    .line 593
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 594
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 599
    return-void
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 602
    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    return-wide v0
.end method

.method public write(I)V
    .locals 4
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 576
    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    .line 577
    return-void
.end method

.method public write([B)V
    .locals 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 582
    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    .line 583
    return-void
.end method

.method public write([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->wrapped:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 588
    iget-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->length:J

    .line 589
    return-void
.end method
