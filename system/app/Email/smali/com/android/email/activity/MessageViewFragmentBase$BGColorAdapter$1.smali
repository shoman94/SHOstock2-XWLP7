.class Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

.field final synthetic val$check:Landroid/widget/RadioButton;

.field final synthetic val$position:I

.field final synthetic val$settingValue:Lcom/android/email/Preferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;ILandroid/widget/RadioButton;Lcom/android/email/Preferences;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7641
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$check:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$settingValue:Lcom/android/email/Preferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 7643
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 7644
    iget v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$position:I

    .line 7645
    .local v0, realColor:I
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7646
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7647
    const/4 v0, 0x2

    .line 7650
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 7659
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->val$settingValue:Lcom/android/email/Preferences;

    invoke-virtual {v1, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 7661
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->BgColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 7662
    return-void
.end method
