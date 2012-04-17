.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7417
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 7423
    const v1, 0x7f10024b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 7425
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->setChecked()V

    .line 7427
    const-string v2, "checked"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7430
    invoke-static {}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6300()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 7431
    return-void
.end method
