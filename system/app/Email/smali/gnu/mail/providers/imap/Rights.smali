.class public final Lgnu/mail/providers/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/mail/providers/imap/Rights$Right;
    }
.end annotation


# instance fields
.field rights:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 178
    instance-of v0, p1, Lgnu/mail/providers/imap/Rights;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mail/providers/imap/Rights;

    iget v0, p1, Lgnu/mail/providers/imap/Rights;->rights:I

    iget v1, p0, Lgnu/mail/providers/imap/Rights;->rights:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lgnu/mail/providers/imap/Rights;->rights:I

    return v0
.end method
