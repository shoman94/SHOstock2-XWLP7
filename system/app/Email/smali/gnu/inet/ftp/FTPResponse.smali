.class public final Lgnu/inet/ftp/FTPResponse;
.super Ljava/lang/Object;
.source "FTPResponse.java"


# instance fields
.field protected final code:I

.field protected final data:Ljava/lang/String;

.field protected final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgnu/inet/ftp/FTPResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lgnu/inet/ftp/FTPResponse;->code:I

    .line 83
    iput-object p2, p0, Lgnu/inet/ftp/FTPResponse;->message:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lgnu/inet/ftp/FTPResponse;->data:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lgnu/inet/ftp/FTPResponse;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lgnu/inet/ftp/FTPResponse;->message:Ljava/lang/String;

    return-object v0
.end method
