.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountSetupSncRestoreOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfiguredAccountsAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mSncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, SncList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    .line 164
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 165
    iput-object p2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    .line 166
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 177
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v5, 0x7f02003b

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    if-nez p2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 184
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;

    .end local v0           #holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    invoke-direct {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;-><init>()V

    .line 185
    .restart local v0       #holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    const v2, 0x7f100002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->accountImageView:Landroid/widget/ImageView;

    .line 186
    const v2, 0x7f100009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->userNameView:Landroid/widget/TextView;

    .line 187
    const v2, 0x7f1000ad

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->accountNameView:Landroid/widget/TextView;

    .line 188
    const v2, 0x7f1000b1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->defaultAccountIconView:Landroid/widget/ImageView;

    .line 191
    if-nez p1, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #setter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I
    invoke-static {v2, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$002(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;I)I

    .line 193
    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->defaultAccountIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->mSelectedListItem:I
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 202
    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->defaultAccountIconView:Landroid/widget/ImageView;

    const v3, 0x7f020037

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/esp/ServiceProvider;->getProviderImageFromSnc(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, resId:I
    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->accountImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->userNameView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 211
    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->userNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->accountNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ConfiguredAccountsAdapter;->mSncList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 214
    return-object p2

    .line 198
    .end local v1           #resId:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    check-cast v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;

    .restart local v0       #holder:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;
    goto :goto_0

    .line 204
    :cond_2
    iget-object v2, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ViewHolder;->defaultAccountIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
