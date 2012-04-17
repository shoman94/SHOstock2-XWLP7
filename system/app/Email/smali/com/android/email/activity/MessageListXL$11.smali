.class Lcom/android/email/activity/MessageListXL$11;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 3217
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x10001

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3220
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setCurrentPosition(I)V

    .line 3221
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 3222
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 3223
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3224
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3234
    :cond_0
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 3289
    :goto_1
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq p3, v0, :cond_1

    .line 3290
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3291
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4200(Lcom/android/email/activity/MessageListXL;)V

    .line 3293
    :cond_1
    return-void

    .line 3227
    :cond_2
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq v0, v4, :cond_3

    if-ne p3, v4, :cond_4

    .line 3228
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3230
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_0

    .line 3236
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3237
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3238
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3239
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3241
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3242
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3244
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3245
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto :goto_1

    .line 3248
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3249
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3250
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3251
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3253
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3254
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3256
    :cond_6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3257
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    .line 3260
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3261
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3262
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3263
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3265
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3266
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3268
    :cond_7
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3269
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    .line 3272
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 3273
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3274
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3275
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3276
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1500(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3277
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->requestFocus()Z

    .line 3278
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1400()I

    move-result v0

    if-eq p3, v0, :cond_8

    .line 3280
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 3281
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$11;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3282
    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    .line 3285
    :pswitch_4
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1402(I)I

    goto/16 :goto_1

    .line 3234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
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
    .line 3297
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
