.class Lcom/android/email/activity/setup/AccountSetupForSeven$2;
.super Ljava/lang/Object;
.source "AccountSetupForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;->setMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iput p2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->val$resId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #getter for: Lcom/android/email/activity/setup/AccountSetupForSeven;->mMessageView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$200(Lcom/android/email/activity/setup/AccountSetupForSeven;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$2;->val$resId:I

    invoke-virtual {v1, v2}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
