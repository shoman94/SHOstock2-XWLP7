.class public Lorg/apache/james/mime4j/field/DefaultFieldParser;
.super Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.source "DefaultFieldParser.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;-><init>()V

    .line 22
    const-string v4, "Content-Transfer-Encoding"

    new-instance v5, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$Parser;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$Parser;-><init>()V

    invoke-virtual {p0, v4, v5}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 23
    const-string v4, "Content-Type"

    new-instance v5, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;

    invoke-direct {v5}, Lorg/apache/james/mime4j/field/ContentTypeField$Parser;-><init>()V

    invoke-virtual {p0, v4, v5}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 25
    new-instance v1, Lorg/apache/james/mime4j/field/DateTimeField$Parser;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/DateTimeField$Parser;-><init>()V

    .line 26
    .local v1, dateTimeParser:Lorg/apache/james/mime4j/field/DateTimeField$Parser;
    const-string v4, "Date"

    invoke-virtual {p0, v4, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 27
    const-string v4, "Resent-Date"

    invoke-virtual {p0, v4, v1}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 29
    new-instance v2, Lorg/apache/james/mime4j/field/MailboxListField$Parser;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/MailboxListField$Parser;-><init>()V

    .line 30
    .local v2, mailboxListParser:Lorg/apache/james/mime4j/field/MailboxListField$Parser;
    const-string v4, "From"

    invoke-virtual {p0, v4, v2}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 31
    const-string v4, "Resent-From"

    invoke-virtual {p0, v4, v2}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 33
    new-instance v3, Lorg/apache/james/mime4j/field/MailboxField$Parser;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/MailboxField$Parser;-><init>()V

    .line 34
    .local v3, mailboxParser:Lorg/apache/james/mime4j/field/MailboxField$Parser;
    const-string v4, "Sender"

    invoke-virtual {p0, v4, v3}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 35
    const-string v4, "Resent-Sender"

    invoke-virtual {p0, v4, v3}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 37
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListField$Parser;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListField$Parser;-><init>()V

    .line 38
    .local v0, addressListParser:Lorg/apache/james/mime4j/field/AddressListField$Parser;
    const-string v4, "To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 39
    const-string v4, "Resent-To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 40
    const-string v4, "Cc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 41
    const-string v4, "Resent-Cc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 42
    const-string v4, "Bcc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 43
    const-string v4, "Resent-Bcc"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 44
    const-string v4, "Reply-To"

    invoke-virtual {p0, v4, v0}, Lorg/apache/james/mime4j/field/DefaultFieldParser;->setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V

    .line 45
    return-void
.end method
