.class Lorg/apache/commons/httpclient/HttpMethodBase$1;
.super Ljava/lang/Object;
.source "HttpMethodBase.java"

# interfaces
.implements Lorg/apache/commons/httpclient/ResponseConsumedWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/httpclient/HttpMethodBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/httpclient/HttpMethodBase;


# virtual methods
.method public responseConsumed()V
    .locals 1

    .prologue
    .line 2797
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodBase$1;->this$0:Lorg/apache/commons/httpclient/HttpMethodBase;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/HttpMethodBase;->responseBodyConsumed()V

    .line 2799
    return-void
.end method
