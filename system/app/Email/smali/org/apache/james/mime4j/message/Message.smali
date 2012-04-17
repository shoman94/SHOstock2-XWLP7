.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/MimeStreamParser;-><init>()V

    .line 62
    .local v0, parser:Lorg/apache/james/mime4j/MimeStreamParser;
    new-instance v1, Lorg/apache/james/mime4j/message/Message$MessageBuilder;

    invoke-direct {v1, p0}, Lorg/apache/james/mime4j/message/Message$MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Message;)V

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/ContentHandler;)V

    .line 63
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getSubject()Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 83
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    .line 84
    .local v0, body:Lorg/apache/james/mime4j/message/Body;
    instance-of v2, v0, Lorg/apache/james/mime4j/message/Multipart;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 85
    check-cast v1, Lorg/apache/james/mime4j/message/Multipart;

    .line 86
    .local v1, mp:Lorg/apache/james/mime4j/message/Multipart;
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 90
    .end local v1           #mp:Lorg/apache/james/mime4j/message/Multipart;
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
