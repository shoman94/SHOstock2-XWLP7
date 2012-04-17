.class public Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;
.super Landroid/database/CursorWrapper;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorWithCounts"
.end annotation


# instance fields
.field private final mAccountCount:I

.field private final mMessageCount:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;II)V
    .locals 0
    .parameter "cursor"
    .parameter "accountCount"
    .parameter "messageCount"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 81
    iput p2, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mAccountCount:I

    .line 82
    iput p3, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mMessageCount:I

    .line 83
    return-void
.end method


# virtual methods
.method public getAccountCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mAccountCount:I

    return v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/email/widget/EmailWidgetLoader$CursorWithCounts;->mMessageCount:I

    return v0
.end method
