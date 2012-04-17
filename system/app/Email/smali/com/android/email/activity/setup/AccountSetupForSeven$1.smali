.class Lcom/android/email/activity/setup/AccountSetupForSeven$1;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;->onCloseActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$1;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    goto :goto_0
.end method
