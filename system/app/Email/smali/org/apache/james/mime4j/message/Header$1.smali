.class Lorg/apache/james/mime4j/message/Header$1;
.super Lorg/apache/james/mime4j/AbstractContentHandler;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/james/mime4j/message/Header;

.field final synthetic val$parser:Lorg/apache/james/mime4j/MimeStreamParser;


# virtual methods
.method public endHeader()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->val$parser:Lorg/apache/james/mime4j/MimeStreamParser;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/MimeStreamParser;->stop()V

    .line 65
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Header$1;->this$0:Lorg/apache/james/mime4j/message/Header;

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Field;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/field/Field;)V

    .line 70
    return-void
.end method
