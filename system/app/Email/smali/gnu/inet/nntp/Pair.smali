.class public final Lgnu/inet/nntp/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# instance fields
.field key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lgnu/inet/nntp/Pair;->key:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lgnu/inet/nntp/Pair;->value:Ljava/lang/String;

    .line 56
    return-void
.end method
