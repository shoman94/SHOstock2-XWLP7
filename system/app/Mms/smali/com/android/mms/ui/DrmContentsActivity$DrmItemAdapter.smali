.class public Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrmContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DrmContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrmItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceID:I

.field final synthetic this$0:Lcom/android/mms/ui/DrmContentsActivity;

.field private vi:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DrmContentsActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DrmContentsActivity$DrmItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DrmContentsActivity$DrmItem;>;"
    iput-object p1, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->this$0:Lcom/android/mms/ui/DrmContentsActivity;

    .line 121
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    iput p3, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->mResourceID:I

    .line 124
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->vi:Landroid/view/LayoutInflater;

    .line 125
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;

    .line 132
    .local v2, item:Lcom/android/mms/ui/DrmContentsActivity$DrmItem;
    invoke-virtual {v2}, Lcom/android/mms/ui/DrmContentsActivity$DrmItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, drmFileName:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 136
    iget-object v4, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->vi:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/mms/ui/DrmContentsActivity$DrmItemAdapter;->mResourceID:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 141
    .local v0, ItemView:Landroid/widget/LinearLayout;
    :goto_0
    const v4, 0x7f08004f

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, view:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-object v0

    .end local v0           #ItemView:Landroid/widget/LinearLayout;
    .end local v3           #view:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 138
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #ItemView:Landroid/widget/LinearLayout;
    goto :goto_0
.end method
