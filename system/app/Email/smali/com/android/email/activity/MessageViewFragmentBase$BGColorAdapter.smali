.class Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;",
            ">;"
        }
    .end annotation
.end field

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
            "Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7612
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;>;"
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 7613
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7614
    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->items:Ljava/util/ArrayList;

    .line 7615
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 7619
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    .line 7620
    .local v3, settingValue:Lcom/android/email/Preferences;
    move-object v5, p2

    .line 7621
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_0

    .line 7622
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v7, v7, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 7624
    .local v6, vi:Landroid/view/LayoutInflater;
    const v7, 0x7f04005f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 7626
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;

    .line 7627
    .local v4, ti:Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;
    if-eqz v4, :cond_3

    .line 7629
    const v7, 0x7f100146

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 7630
    .local v2, iconView:Landroid/widget/ImageView;
    const v7, 0x7f100147

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7631
    .local v1, colorText:Landroid/widget/TextView;
    const v7, 0x7f100148

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 7633
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v1, :cond_1

    .line 7634
    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->getColorText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7636
    :cond_1
    if-eqz v2, :cond_2

    .line 7637
    invoke-virtual {v4}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorItem;->getDrawableId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7640
    :cond_2
    if-eqz v0, :cond_3

    .line 7641
    new-instance v7, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;

    invoke-direct {v7, p0, p1, v0, v3}, Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter$1;-><init>(Lcom/android/email/activity/MessageViewFragmentBase$BGColorAdapter;ILandroid/widget/RadioButton;Lcom/android/email/Preferences;)V

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7668
    .end local v0           #check:Landroid/widget/RadioButton;
    .end local v1           #colorText:Landroid/widget/TextView;
    .end local v2           #iconView:Landroid/widget/ImageView;
    :cond_3
    return-object v5
.end method
