.class Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

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
    .line 187
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->bFirstSelected:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$002(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;Z)Z

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

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
    .line 195
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
