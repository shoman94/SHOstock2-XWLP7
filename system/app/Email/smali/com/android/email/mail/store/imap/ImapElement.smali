.class public abstract Lcom/android/email/mail/store/imap/ImapElement;
.super Ljava/lang/Object;
.source "ImapElement.java"


# static fields
.field public static final NONE:Lcom/android/email/mail/store/imap/ImapElement;


# instance fields
.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/android/email/mail/store/imap/ImapElement$1;

    invoke-direct {v0}, Lcom/android/email/mail/store/imap/ImapElement$1;-><init>()V

    sput-object v0, Lcom/android/email/mail/store/imap/ImapElement;->NONE:Lcom/android/email/mail/store/imap/ImapElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    return-void
.end method


# virtual methods
.method protected final checkNotDestroyed()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Already destroyed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    .line 96
    return-void
.end method

.method public equalsForTest(Lcom/android/email/mail/store/imap/ImapElement;)Z
    .locals 3
    .parameter "that"

    .prologue
    const/4 v0, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/email/mail/store/imap/ImapElement;->mDestroyed:Z

    return v0
.end method

.method public abstract isList()Z
.end method

.method public abstract isString()Z
.end method
