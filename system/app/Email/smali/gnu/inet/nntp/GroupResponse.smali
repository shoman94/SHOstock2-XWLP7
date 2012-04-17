.class public Lgnu/inet/nntp/GroupResponse;
.super Lgnu/inet/nntp/StatusResponse;
.source "GroupResponse.java"


# instance fields
.field public count:I

.field public first:I

.field public group:Ljava/lang/String;

.field public last:I


# direct methods
.method constructor <init>(SLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lgnu/inet/nntp/StatusResponse;-><init>(SLjava/lang/String;)V

    .line 75
    return-void
.end method
