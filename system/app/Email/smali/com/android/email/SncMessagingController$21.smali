.class Lcom/android/email/SncMessagingController$21;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->resetIdling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 4394
    iput-object p1, p0, Lcom/android/email/SncMessagingController$21;->this$0:Lcom/android/email/SncMessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 4396
    iget-object v0, p0, Lcom/android/email/SncMessagingController$21;->this$0:Lcom/android/email/SncMessagingController;

    const-string v1, "resetIdling"

    new-instance v2, Lcom/android/email/SncMessagingController$21$1;

    invoke-direct {v2, p0}, Lcom/android/email/SncMessagingController$21$1;-><init>(Lcom/android/email/SncMessagingController$21;)V

    #calls: Lcom/android/email/SncMessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/SncMessagingController;->access$1100(Lcom/android/email/SncMessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 4402
    return-void
.end method
