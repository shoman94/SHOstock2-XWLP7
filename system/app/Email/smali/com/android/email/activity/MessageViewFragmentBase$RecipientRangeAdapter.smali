.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientRangeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mcontext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7226
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 7227
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7229
    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->items:Ljava/util/ArrayList;

    .line 7230
    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->mcontext:Landroid/content/Context;

    .line 7231
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 7235
    move-object v3, p2

    .line 7236
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 7237
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->mcontext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 7239
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f040095

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 7241
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;

    .line 7244
    .local v2, rp:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;
    if-eqz v2, :cond_2

    .line 7246
    const v5, 0x7f10024d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7247
    .local v1, rangeText:Landroid/widget/TextView;
    const v5, 0x7f10024e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 7249
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v1, :cond_1

    .line 7250
    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;->getRecipientRange()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7252
    :cond_1
    if-eqz v0, :cond_2

    .line 7253
    new-instance v5, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;ILandroid/widget/RadioButton;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7260
    .end local v0           #check:Landroid/widget/RadioButton;
    .end local v1           #rangeText:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
