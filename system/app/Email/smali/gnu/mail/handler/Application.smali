.class public abstract Lgnu/mail/handler/Application;
.super Ljava/lang/Object;
.source "Application.java"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field protected flavor:Lmyjava/awt/datatransfer/DataFlavor;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, [B

    invoke-direct {v0, v1, p1, p2}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/handler/Application;->flavor:Lmyjava/awt/datatransfer/DataFlavor;

    .line 69
    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 114
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 115
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 116
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, [B

    check-cast p1, [B

    .line 136
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 137
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    .line 150
    :goto_0
    return-void

    .line 139
    :cond_0
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 141
    check-cast p1, Ljava/io/InputStream;

    .line 142
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 143
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 143
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p3}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 148
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported data type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
