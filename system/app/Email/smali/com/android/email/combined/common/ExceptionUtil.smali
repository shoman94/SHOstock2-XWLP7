.class public Lcom/android/email/combined/common/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# static fields
.field private static mDialogException:Landroid/app/Dialog;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/android/email/combined/common/ExceptionUtil;->mToast:Landroid/widget/Toast;

    .line 30
    sput-object v0, Lcom/android/email/combined/common/ExceptionUtil;->mDialogException:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V
    .locals 2
    .parameter "fromActivity"
    .parameter "exception"

    .prologue
    .line 137
    new-instance v0, Lcom/android/email/combined/common/ExceptionUtil$5;

    invoke-direct {v0}, Lcom/android/email/combined/common/ExceptionUtil$5;-><init>()V

    new-instance v1, Lcom/android/email/combined/common/ExceptionUtil$6;

    invoke-direct {v1}, Lcom/android/email/combined/common/ExceptionUtil$6;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    .line 146
    return-void
.end method

.method public static showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 4
    .parameter "fromActivity"
    .parameter "exception"
    .parameter "listener"
    .parameter "keyListener"

    .prologue
    const v3, 0x7f080434

    .line 158
    sget-object v2, Lcom/android/email/combined/common/ExceptionUtil;->mDialogException:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/email/combined/common/ExceptionUtil;->mDialogException:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v1, ""

    .line 162
    .local v1, exceptionError:Ljava/lang/String;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 166
    instance-of v2, p1, Landroid/os/RemoteException;

    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_1
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080433

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/email/combined/common/ExceptionUtil;->mDialogException:Landroid/app/Dialog;

    .line 175
    sget-object v2, Lcom/android/email/combined/common/ExceptionUtil;->mDialogException:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    const-string v2, "Z7App"

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Landroid/view/WindowManager$BadTokenException;
    :cond_2
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static showDialogPremiumExpired(Landroid/app/Activity;)V
    .locals 3
    .parameter "fromActivity"

    .prologue
    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080435

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0801cb

    new-instance v2, Lcom/android/email/combined/common/ExceptionUtil$4;

    invoke-direct {v2, p0}, Lcom/android/email/combined/common/ExceptionUtil$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08045b

    new-instance v2, Lcom/android/email/combined/common/ExceptionUtil$3;

    invoke-direct {v2}, Lcom/android/email/combined/common/ExceptionUtil$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    return-void
.end method
