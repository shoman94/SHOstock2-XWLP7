.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteAccountCheckListener"
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;I)V
    .locals 0
    .parameter
    .parameter "position"

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    iput p2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->mPosition:I

    .line 1653
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f100239

    const/4 v5, 0x1

    .line 1659
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget v6, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->mPosition:I

    invoke-virtual {v4, v6}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1660
    .local v3, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v0, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1662
    .local v0, accountid:J
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1664
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 1665
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1686
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->invalidateOptionsMenu()V

    .line 1687
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$DeleteAccountCheckListener;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1688
    return-void

    .line 1667
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1671
    .restart local p1
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1672
    .local v2, cb:Landroid/widget/CheckBox;
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1673
    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 1674
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1672
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1676
    :cond_3
    invoke-static {}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$600()Ljava/util/HashSet;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
