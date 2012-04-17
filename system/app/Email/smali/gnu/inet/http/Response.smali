.class public Lgnu/inet/http/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field protected final code:I

.field protected final codeClass:I

.field protected final headers:Lgnu/inet/http/Headers;

.field protected final majorVersion:I

.field protected final message:Ljava/lang/String;

.field protected final minorVersion:I


# direct methods
.method protected constructor <init>(IIIILjava/lang/String;Lgnu/inet/http/Headers;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lgnu/inet/http/Response;->majorVersion:I

    .line 97
    iput p2, p0, Lgnu/inet/http/Response;->minorVersion:I

    .line 98
    iput p3, p0, Lgnu/inet/http/Response;->code:I

    .line 99
    iput p4, p0, Lgnu/inet/http/Response;->codeClass:I

    .line 100
    iput-object p5, p0, Lgnu/inet/http/Response;->message:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lgnu/inet/http/Response;->headers:Lgnu/inet/http/Headers;

    .line 102
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lgnu/inet/http/Response;->code:I

    return v0
.end method

.method public getCodeClass()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lgnu/inet/http/Response;->codeClass:I

    return v0
.end method

.method public getDateHeader(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lgnu/inet/http/Response;->headers:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getDateValue(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lgnu/inet/http/Response;->headers:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lgnu/inet/http/Headers;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lgnu/inet/http/Response;->headers:Lgnu/inet/http/Headers;

    return-object v0
.end method

.method public getIntHeader(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lgnu/inet/http/Response;->headers:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getIntValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lgnu/inet/http/Response;->majorVersion:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lgnu/inet/http/Response;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lgnu/inet/http/Response;->minorVersion:I

    return v0
.end method
