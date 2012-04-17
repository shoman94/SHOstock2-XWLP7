.class public final Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;
.super Landroid/app/DialogFragment;
.source "SendContactDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;
    }
.end annotation


# instance fields
.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSendContactType:Landroid/widget/TextView;

.field private mSendType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->setSendContactType(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendContactType:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendContactType:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mRadioButton:Landroid/widget/RadioButton;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendType:I

    return v0
.end method

.method private setSendContactType(I)V
    .locals 1
    .parameter "sendType"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;->setSendContactType(I)V

    .line 89
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "fragmentManager"

    .prologue
    .line 67
    new-instance v0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;-><init>()V

    .line 68
    .local v0, instance:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->mSendType:I

    .line 59
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;-><init>(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)V

    .line 75
    .local v0, adapter:Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$SendContactAdapter;
    new-instance v2, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;)V

    .line 83
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/preference/SendContactDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0233

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
