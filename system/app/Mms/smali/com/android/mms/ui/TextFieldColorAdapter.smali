.class public Lcom/android/mms/ui/TextFieldColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TextFieldColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/AlertDialogItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
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
            "Lcom/android/mms/ui/AlertDialogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/ui/AlertDialogItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 27
    return-void
.end method

.method private getCurrentSelectionIndex()I
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, selection:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 64
    const-string v2, "Black"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x0

    .line 70
    :goto_0
    return v2

    .line 67
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const-string v2, "Mms/TextFieldColorAdapter"

    const-string v3, "getCurrentSelectionIndex() return -1 "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 31
    move-object v4, p2

    .line 32
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 33
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 34
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f030032

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 37
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/TextFieldColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AlertDialogItem;

    .line 38
    .local v0, adi:Lcom/android/mms/ui/AlertDialogItem;
    if-eqz v0, :cond_3

    .line 39
    const v6, 0x7f0800ad

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 40
    .local v2, image:Landroid/widget/ImageView;
    const v6, 0x7f0800ae

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 41
    .local v3, name:Landroid/widget/TextView;
    const v6, 0x7f0800af

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, choiceImage:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v0}, Lcom/android/mms/ui/AlertDialogItem;->getImage()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    :cond_1
    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {v0}, Lcom/android/mms/ui/AlertDialogItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 50
    invoke-direct {p0}, Lcom/android/mms/ui/TextFieldColorAdapter;->getCurrentSelectionIndex()I

    move-result v6

    if-ne p1, v6, :cond_4

    .line 51
    const v6, 0x7f020011

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .end local v1           #choiceImage:Landroid/widget/ImageView;
    .end local v2           #image:Landroid/widget/ImageView;
    .end local v3           #name:Landroid/widget/TextView;
    :cond_3
    :goto_0
    return-object v4

    .line 53
    .restart local v1       #choiceImage:Landroid/widget/ImageView;
    .restart local v2       #image:Landroid/widget/ImageView;
    .restart local v3       #name:Landroid/widget/TextView;
    :cond_4
    const v6, 0x7f020010

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
