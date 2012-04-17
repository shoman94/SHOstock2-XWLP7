.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 310
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 314
    .local v0, position:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 315
    .local v2, selectedEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v1, 0x0

    .line 316
    .local v1, prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    iget v3, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    packed-switch v3, :pswitch_data_0

    .line 344
    :goto_1
    if-eqz v1, :cond_6

    .line 345
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 346
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 318
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 320
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 321
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_1

    .line 324
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 325
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 326
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_1

    .line 330
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 331
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 332
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 333
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto :goto_1

    .line 336
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 337
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    .end local v1           #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 338
    .restart local v1       #prevEntry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I
    invoke-static {v3, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I

    .line 339
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #setter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v3, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z

    goto/16 :goto_1

    .line 348
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    :cond_7
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 350
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;->this$0:Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
