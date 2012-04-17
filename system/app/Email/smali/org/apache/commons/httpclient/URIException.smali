.class public Lorg/apache/commons/httpclient/URIException;
.super Lorg/apache/commons/httpclient/HttpException;
.source "URIException.java"


# instance fields
.field protected reason:Ljava/lang/String;

.field protected reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpException;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lorg/apache/commons/httpclient/URIException;->reason:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/httpclient/URIException;->reasonCode:I

    .line 124
    return-void
.end method
