.class public Lorg/apache/commons/httpclient/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I

.field private final statusLine:Ljava/lang/String;


# virtual methods
.method public final getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusCode:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/httpclient/StatusLine;->statusLine:Ljava/lang/String;

    return-object v0
.end method
