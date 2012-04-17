.class public interface abstract Lorg/apache/commons/httpclient/HttpMethod;
.super Ljava/lang/Object;
.source "HttpMethod.java"


# virtual methods
.method public abstract addResponseFooter(Lorg/apache/commons/httpclient/Header;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;
.end method

.method public abstract getResponseBodyAsStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeaders()[Lorg/apache/commons/httpclient/Header;
.end method

.method public abstract getStatusCode()I
.end method

.method public abstract getStatusLine()Lorg/apache/commons/httpclient/StatusLine;
.end method

.method public abstract getStatusText()Ljava/lang/String;
.end method
