.class Lcom/android/mms/ui/CbConfigPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "pref"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 227
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, chSelection:Ljava/lang/String;
    const-string v1, "My channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v2, 0x7f090126

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivity;->refreshMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$300(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v2, 0x7f090132

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 237
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$1;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #calls: Lcom/android/mms/ui/CbConfigPreferenceActivity;->addPreferencesAddMyChannel()V
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$400(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V

    goto :goto_0
.end method
