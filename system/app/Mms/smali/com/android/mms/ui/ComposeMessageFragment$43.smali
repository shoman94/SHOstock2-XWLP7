.class Lcom/android/mms/ui/ComposeMessageFragment$43;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4846
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$dataUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$reqCode:I

    iput-boolean p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$append:Z

    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4848
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4849
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "getActivity is null so Fragment not available!!!"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    :cond_0
    :goto_0
    return-void

    .line 4852
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 4853
    .local v8, res:Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$mediaTypeStringId:I

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4856
    .local v7, mediaType:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    packed-switch v0, :pswitch_data_0

    .line 4894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4858
    :pswitch_0
    const v0, 0x7f090183

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4859
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4862
    .end local v2           #message:Ljava/lang/String;
    :pswitch_1
    const v0, 0x7f090184

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4863
    .local v1, title:Ljava/lang/String;
    const v0, 0x7f090185

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4898
    .restart local v2       #message:Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4900
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v5, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v5, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v10, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 4867
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_2
    const v0, 0x7f090045

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4868
    .restart local v1       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v3, 0x7f090199

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6700(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4869
    const v0, 0x7f09017d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4870
    .restart local v2       #message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v6

    .line 4871
    .local v6, focusedIndex:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 4872
    .local v9, text:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4873
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 4875
    .end local v2           #message:Ljava/lang/String;
    .end local v6           #focusedIndex:I
    .end local v9           #text:Ljava/lang/CharSequence;
    :cond_2
    const v0, 0x7f09018b

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4878
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4880
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_3
    const v0, 0x7f090047

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4881
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f090048

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4882
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4885
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$dataUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$reqCode:I

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$append:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    invoke-static {v0, v7, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    goto/16 :goto_0

    .line 4889
    :pswitch_5
    const v0, 0x7f0901b8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4890
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f0901b9

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4891
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 4906
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->val$sendMultiple:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2400(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4908
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v3, v4, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v5, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v5, v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v10, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6902(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4913
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$43;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2402(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 4856
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
