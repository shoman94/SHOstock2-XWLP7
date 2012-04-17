.class public Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

.field private mName:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 136
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/4 v0, 0x1

    .local v0, style:I
    const/4 v1, 0x0

    .line 63
    .local v1, theme:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->setStyle(II)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 69
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 71
    .local v10, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004c

    const v4, 0x1020014

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    iget-object v5, v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    .line 74
    const v0, 0x7f0d0118

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 76
    .local v8, setPrimaryView:Landroid/widget/LinearLayout;
    const v0, 0x7f0d0119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 77
    .local v7, setAsDefaultCheckBox:Landroid/widget/CheckBox;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v0, 0x7f0d0114

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 101
    .local v9, titleView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const v0, 0x7f0d0117

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 104
    .local v6, lv:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    return-object v10
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 112
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->dismiss()V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;

    .line 115
    .local v0, target:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;ZLandroid/net/Uri;)V

    .line 116
    return-void
.end method

.method public setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;)V
    .locals 0
    .parameter "contactDatas"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionPickerFragment$ContactDatas;

    .line 120
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mUri:Landroid/net/Uri;

    .line 218
    return-void
.end method
