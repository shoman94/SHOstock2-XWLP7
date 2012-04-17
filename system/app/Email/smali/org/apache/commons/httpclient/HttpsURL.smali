.class public Lorg/apache/commons/httpclient/HttpsURL;
.super Lorg/apache/commons/httpclient/HttpURL;
.source "HttpsURL.java"


# static fields
.field public static final DEFAULT_SCHEME:[C = null

.field public static final _default_scheme:[C = null

.field static final serialVersionUID:J = 0xc5241aa7c286428L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    .line 519
    sget-object v0, Lorg/apache/commons/httpclient/HttpsURL;->DEFAULT_SCHEME:[C

    sput-object v0, Lorg/apache/commons/httpclient/HttpsURL;->_default_scheme:[C

    return-void

    .line 508
    nop

    :array_0
    .array-data 0x2
        0x68t 0x0t
        0x74t 0x0t
        0x74t 0x0t
        0x70t 0x0t
        0x73t 0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpURL;-><init>()V

    .line 80
    return-void
.end method
