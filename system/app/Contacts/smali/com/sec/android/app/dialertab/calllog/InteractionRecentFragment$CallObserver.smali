.class Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;
.super Landroid/database/ContentObserver;
.source "InteractionRecentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "h"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$CallObserver;->this$0:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    .line 489
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 490
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 494
    const-string v0, "InteractionRecentFragment"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->access$002(Z)Z

    .line 498
    return-void
.end method
