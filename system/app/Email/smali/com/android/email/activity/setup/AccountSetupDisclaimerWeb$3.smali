.class Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;
.super Ljava/lang/Object;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->initCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-static {v1}, Lcom/seven/Z7/app/SubscriptionStatus;->setApplicationUsageDisclaimerAccepted(Z)V

    .line 270
    sput-boolean v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 271
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->setResult(I)V

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$3;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->finish()V

    .line 273
    return-void
.end method
