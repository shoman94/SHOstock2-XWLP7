.class public Lcom/android/email/activity/AccountShortcutPicker;
.super Landroid/app/Activity;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AccountShortcutPicker$AccountTask;,
        Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;,
        Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
    }
.end annotation


# instance fields
.field private mAccountArrayAdapter:Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;

.field private mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/AccountShortcutPicker$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mItemList:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Lcom/android/email/activity/AccountShortcutPicker$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AccountShortcutPicker$1;-><init>(Lcom/android/email/activity/AccountShortcutPicker;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/AccountShortcutPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker;->setupShortcut(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/AccountShortcutPicker;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker;->showAccountListDialog(Landroid/database/Cursor;)V

    return-void
.end method

.method private setupShortcut(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 270
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntentFromShortcut(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    .line 273
    .local v2, shortcutIntent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const/high16 v3, 0x7f03

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 278
    .local v0, iconResource:Landroid/os/Parcelable;
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/email/activity/AccountShortcutPicker;->setResult(ILandroid/content/Intent;)V

    .line 283
    return-void
.end method

.method private showAccountListDialog(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    .line 145
    move-object v6, p0

    .line 147
    .local v6, activity:Landroid/app/Activity;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v8, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/AccountShortcutPicker$DialogItem;>;"
    const/4 v0, 0x0

    .line 153
    .local v0, item:Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 158
    invoke-interface {p1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 159
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 160
    .local v2, accountId:J
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, accountName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, emailAddress:Ljava/lang/String;
    new-instance v0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;

    .end local v0           #item:Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;-><init>(Lcom/android/email/activity/AccountShortcutPicker;JLjava/lang/String;Ljava/lang/String;)V

    .line 164
    .restart local v0       #item:Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 167
    .end local v2           #accountId:J
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #emailAddress:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mItemList:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;

    const v9, 0x7f04002c

    invoke-direct {v1, p0, v6, v9, v8}, Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;-><init>(Lcom/android/email/activity/AccountShortcutPicker;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountArrayAdapter:Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_3

    .line 172
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f08014a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f080043

    new-instance v10, Lcom/android/email/activity/AccountShortcutPicker$2;

    invoke-direct {v10, p0}, Lcom/android/email/activity/AccountShortcutPicker$2;-><init>(Lcom/android/email/activity/AccountShortcutPicker;)V

    invoke-virtual {v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/android/email/activity/AccountShortcutPicker$3;

    invoke-direct {v9, p0}, Lcom/android/email/activity/AccountShortcutPicker$3;-><init>(Lcom/android/email/activity/AccountShortcutPicker;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountArrayAdapter:Lcom/android/email/activity/AccountShortcutPicker$AccountSelectorAdapter;

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/android/email/activity/AccountShortcutPicker;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialog:Landroid/app/AlertDialog;

    .line 193
    iget-object v1, p0, Lcom/android/email/activity/AccountShortcutPicker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/email/activity/AccountShortcutPicker;->setVisible(Z)V

    .line 73
    new-instance v0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;-><init>(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/email/activity/AccountShortcutPicker$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    .line 74
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker;->mAccountTask:Lcom/android/email/activity/AccountShortcutPicker$AccountTask;

    .line 83
    return-void
.end method
