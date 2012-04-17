.class Lcom/android/email/activity/MessageOrderManager$1;
.super Landroid/database/ContentObserver;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageOrderManager;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #getter for: Lcom/android/email/activity/MessageOrderManager;->mClosed:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$000(Lcom/android/email/activity/MessageOrderManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager$1;->this$0:Lcom/android/email/activity/MessageOrderManager;

    #calls: Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V
    invoke-static {v0}, Lcom/android/email/activity/MessageOrderManager;->access$100(Lcom/android/email/activity/MessageOrderManager;)V

    goto :goto_0
.end method
