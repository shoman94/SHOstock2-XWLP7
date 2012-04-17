.class Lcom/android/email/activity/AccountShortcutPicker$AccountTask;
.super Landroid/os/AsyncTask;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;Lcom/android/email/activity/AccountShortcutPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;-><init>(Lcom/android/email/activity/AccountShortcutPicker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountShortcutPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName is not \'##snc##\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 208
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 210
    const/4 v6, 0x0

    .line 212
    :cond_0
    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 218
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-virtual {v0}, Lcom/android/email/activity/AccountShortcutPicker;->finish()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    #calls: Lcom/android/email/activity/AccountShortcutPicker;->showAccountListDialog(Landroid/database/Cursor;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/AccountShortcutPicker;->access$300(Lcom/android/email/activity/AccountShortcutPicker;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 199
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/AccountShortcutPicker$AccountTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
