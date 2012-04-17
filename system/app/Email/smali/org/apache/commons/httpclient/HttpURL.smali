.class public Lorg/apache/commons/httpclient/HttpURL;
.super Lorg/apache/commons/httpclient/URI;
.source "HttpURL.java"


# static fields
.field public static final DEFAULT_SCHEME:[C = null

.field public static final _default_scheme:[C = null

.field static final serialVersionUID:J = -0x63566f5bfaf4d8e3L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 527
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    .line 538
    sget-object v0, Lorg/apache/commons/httpclient/HttpURL;->DEFAULT_SCHEME:[C

    sput-object v0, Lorg/apache/commons/httpclient/HttpURL;->_default_scheme:[C

    return-void

    .line 527
    nop

    :array_0
    .array-data 0x2
        0x68t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x70t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/httpclient/URI;-><init>()V

    .line 78
    return-void
.end method
