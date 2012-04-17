.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$1;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$1;->this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$1;->this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    .line 432
    return-void
.end method
