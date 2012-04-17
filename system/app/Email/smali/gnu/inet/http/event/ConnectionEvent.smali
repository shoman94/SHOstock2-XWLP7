.class public Lgnu/inet/http/event/ConnectionEvent;
.super Ljava/util/EventObject;
.source "ConnectionEvent.java"


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 68
    iput p2, p0, Lgnu/inet/http/event/ConnectionEvent;->type:I

    .line 69
    return-void
.end method
