.class public Lgnu/inet/http/event/RequestEvent;
.super Ljava/util/EventObject;
.source "RequestEvent.java"


# instance fields
.field protected request:Lgnu/inet/http/Request;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILgnu/inet/http/Request;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 84
    iput p2, p0, Lgnu/inet/http/event/RequestEvent;->type:I

    .line 85
    iput-object p3, p0, Lgnu/inet/http/event/RequestEvent;->request:Lgnu/inet/http/Request;

    .line 86
    return-void
.end method
