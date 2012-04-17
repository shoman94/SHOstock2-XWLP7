.class public Lorg/apache/james/mime4j/message/BodyPart;
.super Lorg/apache/james/mime4j/message/Entity;
.source "BodyPart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPart;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 37
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/BodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 38
    return-void
.end method
