.class public Lgnu/inet/comsat/ComsatInfo;
.super Ljava/lang/Object;
.source "ComsatInfo.java"


# instance fields
.field protected headers:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgnu/inet/comsat/ComsatInfo;->headers:Ljava/util/Map;

    return-void
.end method
