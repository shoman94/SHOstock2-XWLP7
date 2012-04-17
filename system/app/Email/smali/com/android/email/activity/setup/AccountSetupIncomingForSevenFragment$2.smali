.class Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;
.super Ljava/lang/Object;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showPopUpForConnectionFail()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    .line 351
    return-void
.end method
