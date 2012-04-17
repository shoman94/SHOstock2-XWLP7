.class Lcom/android/mms/ui/CbConfigPreferenceActivity$5;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iput p2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->val$position:I

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 334
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ChannelUtils;->removeChannel(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$5;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    #getter for: Lcom/android/mms/ui/CbConfigPreferenceActivity;->mChannelContainer:Landroid/preference/PreferenceGroup;
    invoke-static {v1}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$200(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/preference/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    return-void
.end method
