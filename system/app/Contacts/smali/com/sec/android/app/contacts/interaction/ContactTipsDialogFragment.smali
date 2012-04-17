.class public Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactTipsDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static neverShowContactTipsAgain(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showContactTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    return-void
.end method

.method public static shouldShowContactTips(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showContactTips"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/content/Context;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "context"

    .prologue
    .line 89
    new-instance v0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;-><init>()V

    .line 91
    .local v0, fragment:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;
    const-string v1, "ContactTipsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "ContactTipsDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040044

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 61
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0d010c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 64
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v4, 0x7f0d010b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, doNotShowAgainContainer:Landroid/view/View;
    new-instance v4, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0219

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    new-instance v6, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 85
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method
