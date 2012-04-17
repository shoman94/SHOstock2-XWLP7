.class public Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
.super Ljava/io/FilterInputStream;
.source "SharedFileInputStream.java"

# interfaces
.implements Ljavax/mail/internet/SharedInputStream;


# instance fields
.field private final _file:Ljava/io/File;

.field private final _length:J

.field private _markedPosition:J

.field private final _parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

.field private _position:J

.field private final _start:J

.field private _subStreams:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;JJ)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/io/File;JJ)V
    .locals 2
    .parameter "file"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    .line 38
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    .line 39
    iput-wide p2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    .line 40
    iput-wide p4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    .line 42
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 43
    return-void
.end method

.method private constructor <init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V
    .locals 3
    .parameter "parent"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    .line 50
    iget-object v0, p1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    iput-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_file:Ljava/io/File;

    .line 51
    iput-wide p2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    .line 52
    iput-wide p4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    .line 54
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 55
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 171
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-virtual {v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->dispose()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 180
    return-void
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    return-wide v0
.end method

.method public getRoot()Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_parent:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    invoke-virtual {v0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->getRoot()Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-result-object p0

    .line 160
    .end local p0
    :cond_0
    return-object p0
.end method

.method public mark(I)V
    .locals 2
    .parameter "readLimit"

    .prologue
    .line 140
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_markedPosition:J

    .line 141
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 142
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public newStream(JJ)Ljava/io/InputStream;
    .locals 7
    .parameter "start"
    .parameter "finish"

    .prologue
    const-wide/16 v3, 0x0

    .line 65
    cmp-long v1, p3, v3

    if-gez v1, :cond_2

    .line 66
    :try_start_0
    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 67
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    iget-wide v4, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    sub-long/2addr v4, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    .line 77
    .local v0, stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :goto_0
    iget-object v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_subStreams:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v0

    .line 68
    .end local v0           #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :cond_0
    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 69
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    .restart local v0       #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_0

    .line 71
    .end local v0           #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :cond_1
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    const-wide/16 v4, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V

    .restart local v0       #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_0

    .line 74
    .end local v0           #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :cond_2
    new-instance v0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    iget-wide v1, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_start:J

    add-long v2, v1, p1

    sub-long v4, p3, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    goto :goto_0

    .line 80
    .end local v0           #stream:Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;
    :catch_0
    move-exception v6

    .line 81
    .local v6, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create shared stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    iget-wide v2, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_length:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    const/4 v0, -0x1

    .line 120
    :goto_0
    return v0

    .line 119
    :cond_0
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 92
    .local v1, count:I
    if-nez p3, :cond_1

    .line 93
    const/4 v2, 0x0

    .line 111
    :goto_0
    return v2

    .line 103
    .local v0, ch:I
    :cond_0
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 96
    .end local v0           #ch:I
    :cond_1
    if-ge v1, p3, :cond_2

    .line 97
    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read()I

    move-result v0

    .line 99
    .restart local v0       #ch:I
    if-gez v0, :cond_0

    .line 107
    .end local v0           #ch:I
    :cond_2
    if-nez v1, :cond_3

    .line 108
    const/4 v2, -0x1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 111
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_markedPosition:J

    iput-wide v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->_position:J

    .line 146
    iget-object v0, p0, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 147
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    .local v0, count:J
    :goto_0
    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;->read()I

    move-result v2

    if-gez v2, :cond_1

    .line 136
    :cond_0
    return-wide v0

    .line 130
    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0
.end method
