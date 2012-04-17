.class public Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mColumnName2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "columnName"
    .parameter "columnName2"

    .prologue
    .line 682
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 683
    iput-object p1, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    .line 684
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    .line 685
    return-void
.end method


# virtual methods
.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    .line 692
    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;->mColumnName2:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 695
    .local v1, type:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 704
    :cond_0
    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 688
    const/4 v0, 0x0

    return-object v0
.end method
