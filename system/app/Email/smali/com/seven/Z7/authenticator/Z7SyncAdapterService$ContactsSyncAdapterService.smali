.class public Lcom/seven/Z7/authenticator/Z7SyncAdapterService$ContactsSyncAdapterService;
.super Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.source "Z7SyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/authenticator/Z7SyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsSyncAdapterService"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x102

    invoke-direct {p0, v0}, Lcom/seven/Z7/authenticator/Z7SyncAdapterService;-><init>(I)V

    .line 61
    return-void
.end method
