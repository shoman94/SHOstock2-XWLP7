.class public Lorg/apache/commons/httpclient/util/ParameterParser;
.super Ljava/lang/Object;
.source "ParameterParser.java"


# instance fields
.field private chars:[C

.field private i1:I

.field private i2:I

.field private len:I

.field private pos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->chars:[C

    .line 88
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->pos:I

    .line 92
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->len:I

    .line 96
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i1:I

    .line 100
    iput v1, p0, Lorg/apache/commons/httpclient/util/ParameterParser;->i2:I

    .line 108
    return-void
.end method
