.class public Lcom/android/email/combined/SevenUtils;
.super Ljava/lang/Object;
.source "SevenUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Landroid/content/Context;Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    .line 35
    .local v0, zHandler:Lcom/digc/seven/Z7MailHandler;
    invoke-virtual {v0, p1}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 36
    return-void
.end method

.method public static getZ7EmailService(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    .line 24
    .local v0, zHandler:Lcom/digc/seven/Z7MailHandler;
    return-object v0
.end method

.method public static removeListener(Landroid/content/Context;Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    .line 46
    .local v0, zHandler:Lcom/digc/seven/Z7MailHandler;
    invoke-virtual {v0, p1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 47
    return-void
.end method
