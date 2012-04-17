.class Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;
.super Ljava/lang/Object;
.source "AutoDiscoverSetupExchangeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment$1;->this$0:Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;

    #calls: Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->enableDisableNextButton()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;->access$000(Lcom/android/email/activity/setup/AutoDiscoverSetupExchangeFragment;)V

    .line 276
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 279
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 282
    return-void
.end method
