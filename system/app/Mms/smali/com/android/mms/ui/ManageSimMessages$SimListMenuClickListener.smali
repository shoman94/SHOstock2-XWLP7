.class final Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimListMenuClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/ManageSimMessages$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 291
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 294
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSimMessages;->access$000(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v5

    iget v6, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 295
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_1

    .line 296
    :cond_0
    const-string v3, "Mms/ManageSimMessages"

    const-string v5, "onMenuItemClick Bad cursor."

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 328
    :goto_0
    return v3

    .line 300
    :cond_1
    const-string v5, "Mms/ManageSimMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SimListMenuClickListener.onMenuItemClick(),itemId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 328
    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z
    invoke-static {v5, v0}, Lcom/android/mms/ui/ManageSimMessages;->access$900(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 305
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v6, 0x7f0900be

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iget-object v6, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const v7, 0x7f090027

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 312
    :pswitch_1
    const-string v4, "index_on_icc"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, messageIndexString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    new-instance v5, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;

    invoke-direct {v5, p0, v2}, Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener$1;-><init>(Lcom/android/mms/ui/ManageSimMessages$SimListMenuClickListener;Ljava/lang/String;)V

    const v6, 0x7f090094

    #calls: Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$1100(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
