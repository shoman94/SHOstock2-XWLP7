.class Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    #calls: Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z

    .line 218
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 221
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 224
    return-void
.end method
