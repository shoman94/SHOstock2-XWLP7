.class public abstract Lorg/apache/commons/httpclient/methods/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field protected static final QUOTE_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/apache/commons/httpclient/methods/multipart/Part;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->LOG:Lorg/apache/commons/logging/Log;

    .line 105
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    .line 112
    sget-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 120
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CRLF_BYTES:[B

    .line 128
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->QUOTE_BYTES:[B

    .line 138
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->EXTRA_BYTES:[B

    .line 148
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 158
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 168
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CHARSET_BYTES:[B

    .line 178
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/methods/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/methods/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
