.class public final Lgnu/inet/nntp/ActiveTime;
.super Ljava/lang/Object;
.source "ActiveTime.java"


# instance fields
.field email:Ljava/lang/String;

.field group:Ljava/lang/String;

.field time:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lgnu/inet/nntp/ActiveTime;->group:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lgnu/inet/nntp/ActiveTime;->time:Ljava/util/Date;

    .line 59
    iput-object p3, p0, Lgnu/inet/nntp/ActiveTime;->email:Ljava/lang/String;

    .line 60
    return-void
.end method
