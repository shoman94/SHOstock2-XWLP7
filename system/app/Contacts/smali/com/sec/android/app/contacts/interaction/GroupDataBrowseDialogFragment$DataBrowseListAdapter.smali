.class public Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupDataBrowseDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataBrowseListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mAccountType:Ljava/lang/String;

.field final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "textViewId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p5, dataSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    .line 126
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 128
    #getter for: Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mContactDatas:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;
    invoke-static {p1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->access$100(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas;->mAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    .line 130
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "dataInfo"

    .prologue
    .line 134
    const-string v3, ""

    .line 135
    .local v3, kindString:Ljava/lang/String;
    const-string v9, ""

    .line 137
    .local v9, typeString:Ljava/lang/String;
    iget-object v5, p3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 138
    .local v5, mimeType:Ljava/lang/String;
    iget v0, p3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->dataType:I

    .line 139
    .local v0, dataType:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mAccountType:Ljava/lang/String;

    invoke-virtual {v10, v11, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 141
    .local v2, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v2, :cond_3

    .line 142
    iget-object v10, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget v11, v2, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 145
    iget-object v10, v2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditType;

    .line 146
    .local v8, type:Lcom/android/contacts/model/AccountType$EditType;
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v10, v0, :cond_0

    .line 147
    iget-object v10, v8, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 150
    iget v10, v8, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    :goto_0
    const v10, 0x1020014

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 164
    .local v6, text1:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .local v4, kindTypeString:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    if-eqz v9, :cond_2

    .line 167
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v4           #kindTypeString:Ljava/lang/StringBuilder;
    .end local v6           #text1:Landroid/widget/TextView;
    :cond_3
    const v10, 0x1020015

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 173
    .local v7, text2:Landroid/widget/TextView;
    iget-object v10, p3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 153
    .end local v7           #text2:Landroid/widget/TextView;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v8       #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    iget-object v9, p3, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 155
    goto :goto_0

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v8           #type:Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    const-string v9, ""

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment$ContactDatas$DataInfo;)V

    .line 187
    return-object v0

    .line 182
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 191
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$DataBrowseListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
