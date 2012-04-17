.class public Lorg/apache/commons/httpclient/params/HostParams;
.super Lorg/apache/commons/httpclient/params/DefaultHttpParams;
.source "HostParams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/params/HttpParams;)V
    .locals 0
    .parameter "defaults"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/params/DefaultHttpParams;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 116
    return-void
.end method
