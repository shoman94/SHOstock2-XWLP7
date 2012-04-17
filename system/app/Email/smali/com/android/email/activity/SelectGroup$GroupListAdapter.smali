.class Lcom/android/email/activity/SelectGroup$GroupListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/SelectGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/SelectGroup;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/SelectGroup;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1003
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/email/activity/SelectGroup$GroupListAdapter;->this$0:Lcom/android/email/activity/SelectGroup;

    .line 1005
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1009
    iput-object p4, p0, Lcom/android/email/activity/SelectGroup$GroupListAdapter;->items:Ljava/util/ArrayList;

    .line 1011
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1019
    move-object v3, p2

    .line 1021
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_0

    .line 1023
    iget-object v5, p0, Lcom/android/email/activity/SelectGroup$GroupListAdapter;->this$0:Lcom/android/email/activity/SelectGroup;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/android/email/activity/SelectGroup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 1025
    .local v4, vi:Landroid/view/LayoutInflater;
    const v5, 0x7f04005b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1029
    .end local v4           #vi:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v5, p0, Lcom/android/email/activity/SelectGroup$GroupListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1033
    .local v1, gp:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1035
    const v5, 0x7f10013f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1037
    .local v2, groupName:Landroid/widget/TextView;
    const v5, 0x7f100140

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1041
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v2, :cond_1

    .line 1043
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    :cond_1
    if-eqz v0, :cond_2

    .line 1051
    new-instance v5, Lcom/android/email/activity/SelectGroup$GroupListAdapter$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/SelectGroup$GroupListAdapter$1;-><init>(Lcom/android/email/activity/SelectGroup$GroupListAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    .end local v0           #check:Landroid/widget/RadioButton;
    .end local v2           #groupName:Landroid/widget/TextView;
    :cond_2
    return-object v3
.end method
