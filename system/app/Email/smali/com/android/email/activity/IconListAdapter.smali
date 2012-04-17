.class public Lcom/android/email/activity/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/activity/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/activity/IconListAdapter$IconListItem;>;"
    const v0, 0x7f04005c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 79
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 94
    iget-object v5, p0, Lcom/android/email/activity/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04005c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, view:Landroid/view/View;
    :goto_0
    const v5, 0x7f100142

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/IconListAdapter$IconListItem;

    invoke-virtual {v5}, Lcom/android/email/activity/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v5, 0x7f100141

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 113
    .local v2, image:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 114
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/android/email/activity/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/IconListAdapter$IconListItem;

    invoke-virtual {v5}, Lcom/android/email/activity/IconListAdapter$IconListItem;->getResource()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 151
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_1

    .line 152
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_2
    return-object v4

    .line 98
    .end local v0           #dr:Landroid/graphics/drawable/Drawable;
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #text:Landroid/widget/TextView;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 117
    .restart local v0       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #text:Landroid/widget/TextView;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.myfiles"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    goto :goto_1

    .line 121
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.cooliris.media"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    goto :goto_1

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    goto :goto_1

    .line 129
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.videoplayer"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    goto :goto_1

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.music"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    goto :goto_1

    .line 137
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.memo"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 138
    goto :goto_1

    .line 141
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    goto :goto_1

    .line 145
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/email/activity/IconListAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.task"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/activity/IconListAdapter$IconListItem;

    invoke-virtual {v5}, Lcom/android/email/activity/IconListAdapter$IconListItem;->getResource()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x7f020009
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method
