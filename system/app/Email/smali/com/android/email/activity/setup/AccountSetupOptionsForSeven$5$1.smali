.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5$1;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->optionsComplete()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$200(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    .line 514
    return-void
.end method
