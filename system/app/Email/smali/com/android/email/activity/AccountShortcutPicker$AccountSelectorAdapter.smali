.class Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSelectorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/AccountShortcutPicker$DialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/AccountShortcutPicker$DialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/AccountShortcutPicker$DialogItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    .line 102
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    move-object v4, p2

    .line 110
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 111
    iget-object v5, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/email/activity/AccountShortcutPicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 113
    .local v1, lf:Landroid/view/LayoutInflater;
    const v5, 0x7f04002c

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 116
    .end local v1           #lf:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;

    .line 117
    .local v0, item:Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
    if-eqz v0, :cond_1

    .line 118
    const v5, 0x7f1000ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    .local v2, targetAccountName:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v5, 0x7f1000b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, targetEmailAddress:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->emailAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v2           #targetAccountName:Landroid/widget/TextView;
    .end local v3           #targetEmailAddress:Landroid/widget/TextView;
    :cond_1
    return-object v4
.end method
