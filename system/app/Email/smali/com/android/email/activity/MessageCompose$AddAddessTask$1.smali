.class Lcom/android/email/activity/MessageCompose$AddAddessTask$1;
.super Landroid/app/ProgressDialog;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$AddAddessTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$AddAddessTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$AddAddessTask;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 12641
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;->this$1:Lcom/android/email/activity/MessageCompose$AddAddessTask;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 12644
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$AddAddessTask$1;->this$1:Lcom/android/email/activity/MessageCompose$AddAddessTask;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/MessageCompose$AddAddessTask;->isCancelledFlag:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose$AddAddessTask;->access$13202(Lcom/android/email/activity/MessageCompose$AddAddessTask;Z)Z

    .line 12645
    invoke-super {p0}, Landroid/app/ProgressDialog;->onBackPressed()V

    .line 12646
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 12649
    const/4 v0, 0x0

    return v0
.end method
