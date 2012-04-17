.class public Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDataBrowseDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;,
        Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

.field private mChecked:Z

.field private mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 117
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    .local v0, style:I
    const/4 v1, 0x0

    .line 60
    .local v1, theme:I
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->setStyle(II)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    const v0, 0x7f04004b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 68
    .local v10, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f04004c

    const v4, 0x1020014

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    iget-object v5, v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mDataSet:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;-><init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    .line 71
    const v0, 0x7f0d0118

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 73
    .local v8, setPrimaryView:Landroid/widget/LinearLayout;
    const v0, 0x7f0d0119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 74
    .local v7, setAsDefaultCheckBox:Landroid/widget/CheckBox;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;

    invoke-direct {v0, p0, v7}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0d0114

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, titleView:Landroid/widget/TextView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v0, 0x7f0d0117

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 88
    .local v6, lv:Landroid/widget/ListView;
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-object v10
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 96
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->dismiss()V

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;

    .line 99
    .local v0, target:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mPartition:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$Listener;->onDataChosen(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method public setContactDatas(Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;)V
    .locals 0
    .parameter "contactDatas"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 108
    return-void
.end method
