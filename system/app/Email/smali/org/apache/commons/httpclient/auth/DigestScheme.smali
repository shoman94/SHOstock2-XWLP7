.class public Lorg/apache/commons/httpclient/auth/DigestScheme;
.super Lorg/apache/commons/httpclient/auth/RFC2617Scheme;
.source "DigestScheme.java"


# static fields
.field private static final HEXADECIMAL:[C

.field private static final LOG:Lorg/apache/commons/logging/Log;


# instance fields
.field private complete:Z

.field private final formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

.field private qopVariant:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/apache/commons/httpclient/auth/DigestScheme;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->LOG:Lorg/apache/commons/logging/Log;

    .line 129
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/httpclient/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/RFC2617Scheme;-><init>()V

    .line 152
    iput v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->qopVariant:I

    .line 168
    iput-boolean v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->complete:Z

    .line 170
    new-instance v0, Lorg/apache/commons/httpclient/util/ParameterFormatter;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/util/ParameterFormatter;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/auth/DigestScheme;->formatter:Lorg/apache/commons/httpclient/util/ParameterFormatter;

    .line 172
    return-void
.end method


# virtual methods
.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, "digest"

    return-object v0
.end method
