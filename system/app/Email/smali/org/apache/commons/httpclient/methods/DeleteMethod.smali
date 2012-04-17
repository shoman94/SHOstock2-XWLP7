.class public Lorg/apache/commons/httpclient/methods/DeleteMethod;
.super Lorg/apache/commons/httpclient/HttpMethodBase;
.source "DeleteMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodBase;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "DELETE"

    return-object v0
.end method
