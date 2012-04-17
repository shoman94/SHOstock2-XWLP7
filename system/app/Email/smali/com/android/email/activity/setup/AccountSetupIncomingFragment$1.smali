.class Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupIncomingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->bFirstSelected:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->access$002(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;Z)Z

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
